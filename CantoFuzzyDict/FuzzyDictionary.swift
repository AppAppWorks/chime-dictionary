//
//  FuzzyDictionary.swift
//  CantoFuzzyDict
//
//  Created by Resonance on 10/2/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import BaseDictionary
import Canto
import SymSpell

public class FuzzyDictionary : Serializable {
    typealias KeyValue = CantoDictionary.Result
    
    public struct Match : CustomStringConvertible {
        let terms: String
        let range: Range<String.Index>
        let phoneticInfo: PhoneticInfo
        
        public var description: String {
            return "Match(terms: \(terms), phoneticInfo: \(phoneticInfo))"
        }
    }
    
    public enum Result {
        case exact(match: Match)
        case fuzzy(suggestions: [(match: Match, distance: Int)], originals: [Match])
    }
    
    private let cantoDictionary: CantoDictionary
//    private let symSpell: SymSpell<CantoStruct>
    private let symSpell: SymSpellStatic<CantoStruct>
    
    public convenience init?() {
        do {
            let keyNormalizedJsonUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/keynormalized_kaifangcidian.json")
            let data = try Data(contentsOf: keyNormalizedJsonUrl)
            guard let entries = try JSONSerialization.jsonObject(with: data) as? [String : [[String : Any]]] else {
                return nil
            }
            let keyValues = try CantoDictionary.getKeyValues(from: Array(entries))
            self.init(keyValues: keyValues)
//            guard let cantoDictionary = CantoDictionary(json: entries) else {
//                return nil
//            }
//            self.cantoDictionary = cantoDictionary
//
//            symSpell = createSymSpell(entries)
        } catch {
            debugPrint(error)
            return nil
        }
    }
    
    init?(keyValues: [KeyValue]) {
        guard let polyUKeyValues = try? FuzzyDictionary.createKeyValuesFromPolyUJson() else { return nil }
        self.cantoDictionary = CantoDictionary(keyValues: keyValues + polyUKeyValues)
        self.symSpell = FuzzyDictionary.createSymSpellStatic(keyValues)
    }
    
    public required init(serializedData: Data) throws {
        var start = MemoryLayout<Int>.stride
        let dictSize: Int = serializedData[..<start].withUnsafeBytes { $0.pointee }
        
        let dictData = serializedData[start..<start + dictSize]
        let cantoDictionary = try CantoDictionary(serializedData: dictData)
        self.cantoDictionary = cantoDictionary
        start += dictSize
        
        let symSpellSize: Int = serializedData[start..<start + MemoryLayout<Int>.stride].withUnsafeBytes { $0.pointee }
        start += MemoryLayout<Int>.stride
        
        let symSpellData = serializedData[start..<start + symSpellSize]
        let symSpell = try SymSpellStatic<CantoStruct>(serializedData: symSpellData)
        self.symSpell = symSpell
    }
    
    static func getKeyValues<C>(from raw: C) throws -> [KeyValue] where C : Collection, C.Element == (String, [[String : Any]]) {
        return try CantoDictionary.getKeyValues(from: raw)
    }
    
    public func convertToSyllables(from text: String) -> [Result] {
        guard var start = (text.firstIndex { $0 != " " }) else { return [] }
        
        var results = [Result]()
        
        while start < text.endIndex {
            let text = text[start...]
            
            let end = text.firstIndex(of: " ") ?? text.endIndex
            let range = start..<end
            let textSegment = String(text[range])
        
            let converted = cantoDictionary.convertToSyllables(from: textSegment)
            
            let originalMatches: [Match] = zip(converted.terms, converted.termEntries).map {
                let startDist = textSegment.distance(from: textSegment.startIndex, to: $0.0.startIndex)
                let endDist = textSegment.distance(from: textSegment.startIndex, to: $0.0.endIndex)
                return Match(terms: String($0.0),
                             range: (text.index(start, offsetBy: startDist)..<text.index(start, offsetBy: endDist)),
                             phoneticInfo: $0.1)
            }
            func appendExacts() {
                let exacts = originalMatches.map { Result.exact(match: $0) }
                results.append(contentsOf: exacts)
            }
            
            if textSegment.count > 1 && textSegment.count <= 8 && converted.phoneticInfos.count > 1 {
                let suggestionGroups = fuzzyMatch(textSegment: textSegment, range: range)
                
                if suggestionGroups.isEmpty {
                    appendExacts()
                } else {
                    let fuzzy = Result.fuzzy(suggestions: suggestionGroups.flatMap { $0 }, originals: originalMatches)
                    results.append(fuzzy)
                }
            } else {
                appendExacts()
            }
            
            if end < text.endIndex {
                start = text.index(after: end)
            } else {
                start = end
            }
        }
        
        return results
    }
    
    private func fuzzyMatch(textSegment: String, range: Range<String.Index>) -> [[(match: Match, distance: Int)]] {
        let spacedTextSegment = textSegment.map { String($0) }.joined(separator: " ")
        let subConverted = cantoDictionary.convertToSyllables(from: spacedTextSegment, remainsNone: false)
//        TODO: consider performing fuzzy search on all syllable combinations
        // assuming on average each character has 3 pronunications, the maximum number of combinations for a 8-character long term would be 3^8 = 6561
        let syllables = subConverted.phoneticInfos.flatMap { $0.pronunciations[0] }
        let concatEncodedStrings = syllables.map { $0.encodedString }.joined()
        
        // we limit edit distance for short strings to weed out false positives
        let suggestItems = symSpell.lookup(input: concatEncodedStrings,
                                           verbosity: .closest)
        var suggestionGroups = [[(match: Match, distance: Int)]]()
        var editDistance = EditDistance(algorithm: .damerauOSA)
        
        for suggestItem in suggestItems {
            if case let .key(cantoStruct) = suggestItem.term {
                // sort by affinity of characters found with the search term
                let sortedTerms = cantoStruct.termData.sorted { editDistance.compare(string1: textSegment, string2: $0.term, maxDistance: symSpell.maxEditDistance(words: textSegment, $0.term)) < editDistance.compare(string1: textSegment, string2: $1.term, maxDistance: symSpell.maxEditDistance(words: textSegment, $1.term)) }
                let sortedMatches: [(Match, Int)] = sortedTerms.map {
                    let phoneticInfo = PhoneticInfo(pronunciations: [cantoStruct.jyutPing], offsetPairs: $0.offsetPairs )
                    return (Match(terms: $0.term, range: range, phoneticInfo: phoneticInfo), suggestItem.distance)
                }
                suggestionGroups.append(sortedMatches)
            }
        }
        
        return suggestionGroups
            .map {
                (suggestionGroup: $0, syllableDistance: $0[0].match.phoneticInfo.pronunciations[0].distance(from: syllables)!)
            // filter out short search terms that aren't enough similar with the original one in terms of syllable
            }.filter {
                $0.syllableDistance < syllables.count
            // sort the suggestion groups based on the affinity of their pronunciation with the original one
            }.sorted {
                $0.syllableDistance < $1.syllableDistance
            }.map {
                $0.suggestionGroup
        }
    }
}


extension FuzzyDictionary {
    public func serializedData() throws -> Data {
        var data = Data()
        let dictData = try cantoDictionary.serializedData()
        
        data.append(withUnsafeBytes(of: dictData.count) { Data($0) })
        data.append(dictData)
        
        let symSpellData = try symSpell.serializedData()
        
        data.append(withUnsafeBytes(of: symSpellData.count) { Data($0) })
        data.append(symSpellData)
        
        return data
    }
}

extension FuzzyDictionary {
    static func createSymSpell(_ keyValues: [KeyValue]) -> SymSpell<CantoStruct> {
        var syllableToTerms = [[CantoSyllable] : [(term: String, offsetPairs: [OffsetPair])]]()
        
        keyValues.forEach {
            let (term, phoneticInfo) = $0
            phoneticInfo.pronunciations.forEach {
                guard $0.count > 1 else { return }
                syllableToTerms[$0, default: []].append((term, phoneticInfo.offsetPairs))
            }
        }
        
        let symSpell = SymSpell<CantoStruct>(initialCapacity: syllableToTerms.count, maxDictionaryEditDistance: 3, prefixLength: 7)
        syllableToTerms.forEach {
            symSpell.createDictionaryEntry(key: CantoStruct(jyutPing: $0.key, termData: $0.value), count: $0.value.count)
        }
        
        return symSpell
    }
    
    static func createSymSpellStatic(_ keyValues: [KeyValue]) -> SymSpellStatic<CantoStruct> {
        var syllableToTerms = [[CantoSyllable] : [(term: String, offsetPairs: [OffsetPair])]]()
        
        keyValues.forEach {
            let (term, phoneticInfo) = $0
            phoneticInfo.pronunciations.forEach {
                guard $0.count > 1 && $0.count < 9 else { return }
                syllableToTerms[$0, default: []].append((term, phoneticInfo.offsetPairs))
            }
        }
        
        let symSpell = SymSpellStatic(
            editDistanceMap: SymSpellStatic.EditDistanceMap(distanceBounds: 1...3, distanceRanges: [(2, 2)])!,
            prefixLength: 7,
            entries: syllableToTerms.map {
                (term: .key(value: CantoStruct(jyutPing: $0.key, termData: $0.value)), count: $0.value.count)
        })
        
        return symSpell
    }
    
    static func createKeyValuesFromPolyUJson() throws -> [KeyValue] {
        let url = URL(fileURLWithPath: "/Users/Resonance/Documents/Developer/ChineseInputDictionary/common/Assets/Data/charToJyutPing.json")
        let data = try Data(contentsOf: url)
        let json = try JSONDecoder().decode([String : [String]].self, from: data)
        
        return json.map {
            ($0.key, PhoneticInfo(pronunciations: $0.value.map { [Syllable(jyutPing: $0)!] }, offsetPairs: []))
        }
    }
    
    static func createTermDerivatives(keyValue: KeyValue) -> TermDerivatives {
        let (term, phoneticInfo) = keyValue
        let pronunciationBytess = phoneticInfo.pronunciations.map { $0.encodedBytes }
        let pronunciationBytes = pronunciationBytess[0]
//        let pronunciationStrings = phoneticInfo.pronunciations.map { $0.encodedString }
//        let pronunciationString = pronunciationStrings[0]
        
        var charStart = 0
        var syllableStart = 0
        
        var charPoints = [String.Index]()
//        var pronunciationPoints = [String.Index]()
        var pronunciationPoints = [Int]()
        
        var charPoint = term.startIndex
//        var pronunciationPoint = pronunciationString.startIndex
        var pronunciationPoint = 0
        
        for offsetPair in phoneticInfo.offsetPairs {
            let charEnd = offsetPair.termOffset.startIndex
            
            for _ in charStart..<charEnd {
                term.formIndex(after: &charPoint)
                charPoints.append(charPoint)
            }
            
            charStart = offsetPair.termOffset.endIndex
            
            let syllableEnd = offsetPair.syllableOffset.startIndex
            
            for _ in syllableStart..<syllableEnd {
//                pronunciationString.formIndex(&pronunciationPoint, offsetBy: 3)
                pronunciationPoint += 3
                pronunciationPoints.append(pronunciationPoint)
            }
            
            syllableStart = offsetPair.syllableOffset.endIndex
            
            term.formIndex(&charPoint, offsetBy: offsetPair.termOffset.count)
            charPoints.append(charPoint)
            
//            pronunciationString.formIndex(&pronunciationPoint, offsetBy: offsetPair.syllableOffset.count * 3)
            pronunciationPoint += offsetPair.syllableOffset.count * 3
            pronunciationPoints.append(pronunciationPoint)
        }
        
        if charStart < term.count {
            for _ in charStart..<term.count {
                term.formIndex(after: &charPoint)
                charPoints.append(charPoint)
            }
            for _ in syllableStart..<phoneticInfo.pronunciations[0].count {
//                pronunciationString.formIndex(&pronunciationPoint, offsetBy: 3)
                pronunciationPoint += 3
                pronunciationPoints.append(pronunciationPoint)
            }
        }
        
        return TermDerivatives(term: term,
                               progression: Array(zip(charPoints, pronunciationPoints)),
                               pronunciationBytess: pronunciationBytess)
//                               pronunciationStrings: pronunciationStrings)
    }
}

struct TermDerivatives {
    typealias ProgressionPointPair = (termPoint: String.Index, pronunciationPoint: Int)
    let term: String
    let progression: [ProgressionPointPair]
//    let pronunciationStrings: [[UInt8]]
    let pronunciationBytess: [[UInt8]]
}

//struct TermDerivatives {
//    typealias ProgressionPointPair = (termPoint: String.Index, pronunciationPoint: String.Index)
//    let term: String
//    let progression: [ProgressionPointPair]
//    let pronunciationStrings: [String]
//}
