//
//  CantoDictionary.swift
//  Canto
//
//  Created by Resonance on 7/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import BaseDictionary

public class CantoDictionary : DictionaryProtocol {
    public typealias Result = (String, PhoneticInfo)
    
    private let impl: DictionaryImpl<PhoneticInfo>
    
    public required init?(serializedData: Data) {
        guard let impl = DictionaryImpl<PhoneticInfo>(serializedData: serializedData) else { return nil }
        self.impl = impl
    }
    
    public init?() {
        do {
//            let cidianKeyValues = try CantoDictionary.getKeyValuesFromCidian()
            let keyNormalizedJsonUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/keynormalized_kaifangcidian.json")
            let keyValues = try CantoDictionary.getKeyValuesFromJson(url: keyNormalizedJsonUrl)
            impl = DictionaryImpl(keyValuesProvider: keyValues)
        } catch {
            debugPrint(error)
            return nil
        }
    }
    
    public init?(json: [String : [[String : Any]]]) {
        do {
            let keyValues = try CantoDictionary.getKeyValues(from: Array(json))
            impl = DictionaryImpl(keyValuesProvider: keyValues)
        } catch {
            debugPrint(error)
            return nil
        }
    }
    
    public init(keyValues: [Result]) {
        impl = DictionaryImpl(keyValuesProvider: keyValues)
    }
    
    public subscript(key: String) -> PhoneticInfo? {
        return impl[key]
    }
    
    public func convertToSyllables(from text: String, remainsNone: Bool = true) -> Converted {
        return impl.convertToSyllables(from: text, remainsNone: remainsNone)
    }
    
    static func getKeyValuesFromJson(url: URL) throws -> [Result] {
        let data = try Data(contentsOf: url)
        guard let entries = try JSONSerialization.jsonObject(with: data) as? [String : [[String : Any]]] else {
            return []
        }
        
        return try getKeyValues(from: Array(entries))
    }
    
    public static func getKeyValues<C>(from raw: C) throws -> [Result] where C : Collection, C.Element == (String, [[String : Any]]) {
        var results = [Result]()
        results.reserveCapacity(raw.count)
        
        func getSyllableGroups(_ dict: [String : Any]) -> [[Substring]] {
            let syllableStrings = dict["syllables"] as! [String]
            return syllableStrings.map { $0.split(separator: " ") }
        }
        
        for (key, value) in raw {
            let charGroups = key.split(separator: " ")
            let syllableGroups = getSyllableGroups(value[0])
            
            var charStart = 0
            var syllableStart = 0
//            indicates a silent string's start index
            var silenceStart: Int?
            
            var i = 0
            var j = 0
            
            var term = ""
            var offsets = [(Range<Int>, Range<Int>)]()
            
            while i < charGroups.count && j < syllableGroups.count {
                let charGroup = charGroups[i]
                let charGroupCount = charGroup.count
                
                term.append(String(charGroup))
                
                switch charGroup {
                case "……", "…", "，", "？":
                    if silenceStart == nil {
                        silenceStart = charStart
                    }
                    i += 1
                    charStart += charGroupCount
                    continue
                default:
                    silenceStart.map {
                        offsets.append(($0..<charStart, syllableStart..<syllableStart))
                        silenceStart = nil
                    }
                }
                
                let syllableGroup = syllableGroups[j]
                let syllableGroupCount = syllableGroup.count
                
                var charOffset: Range<Int>?
                var syllableOffset: Range<Int>?
                
                if charGroupCount > 1 {
                    charOffset = charStart..<charStart + charGroupCount
                }
                
                if syllableGroupCount > 1 {
                    syllableOffset = syllableStart..<syllableStart + syllableGroupCount
                }
                
                if charOffset != nil && syllableOffset == nil {
                    syllableOffset = syllableStart..<syllableStart + 1
                } else if charOffset == nil && syllableOffset != nil {
                    charOffset = charStart..<charStart + 1
                }
                
                if let charOffset = charOffset, let syllableOffset = syllableOffset {
                    offsets.append((charOffset, syllableOffset))
                }
                
                for syllableString in syllableGroup {
                    let syllableString = String(syllableString)
                    
                    guard let _ = Syllable(jyutPing9: syllableString) else {
                        throw ParseError(entry: syllableString, word: key, syllables: [])
                    }
                }
                
                charStart += charGroupCount
                syllableStart += syllableGroupCount
                
                i += 1
                j += 1
            }
            
            var pronunciations = [[Syllable]]()
            
            try value.map(getSyllableGroups).forEach {
                let pronunciation =
                try $0.flatMap {
                    try $0.map { s -> Syllable in
                        let syllableString = String(s)
                        
                        guard let syllable = Syllable(jyutPing9: syllableString) else {
                            throw ParseError(entry: syllableString, word: "", syllables: [])
                        }
                        
                        return syllable
                    }
                }
                
                if !pronunciations.contains(pronunciation) {
                    pronunciations.append(pronunciation)
                }
            }
            
            results.append((term, PhoneticInfo(pronunciations: pronunciations, offsetPairs: offsets)))
        }
        
        return results
    }
    
    static func getKeyValuesFromCidian() throws -> [Result] {
        let jsonPath = "/Users/Resonance/Downloads/cidian_zhyue-kfcd/cidian_zhyue-ft-kfcd-jy-2018620.txt"
        let url = URL(fileURLWithPath: jsonPath)
        
        let data = try Data(contentsOf: url)
        let entries = try JSONDecoder().decode([String].self, from: data)
        
        var results = [Result]()
        results.reserveCapacity(entries.count / 3)
        
        var word = entries[0]
        var syllables = [Syllable]()
        
        for entry in entries.dropFirst() {
            switch entry.last! {
            case "1"..."9":
                guard let syllable = Syllable(jyutPing9: entry) else {
                    throw ParseError(entry: entry, word: word, syllables: syllables)
                }
                syllables.append(syllable)
            default:
//                if syllables.count == word.count {
//                    results.append((word, Phonemes(syllables: syllables)))
//                    syllables.removeAll()
//                } else if !syllables.isEmpty {
//                    throw ParseError(entry: entry, word: word, syllables: syllables)
//                }
//                word = entry
                if !syllables.isEmpty {
                    results.append((word, PhoneticInfo(pronunciations: [syllables], offsetPairs: [])))
                    syllables.removeAll()
//                    word = entry
                } else {
//                    throw ParseError(entry: entry, word: word, syllables: syllables)
                }
                word = entry
            }
        }
        
        return results
    }
}

extension CantoDictionary {
    public func serializedData() throws -> Data {
        return try impl.serializedData()
    }
}

private struct ParseError : Error {
    let entry: String
    let word: String?
    let syllables: [Syllable]
}
