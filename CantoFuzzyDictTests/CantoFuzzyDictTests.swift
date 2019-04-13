//
//  CantoFuzzyDictTests.swift
//  CantoFuzzyDictTests
//
//  Created by Resonance on 17/2/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import XCTest
@testable import Canto
@testable import CantoFuzzyDict

class CantoFuzzyDictTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    let fuzzyUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/CantoFuzzyDict.pb")
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let keyNormalizedJsonUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/keynormalized_kaifangcidian.json")
        let data = try Data(contentsOf: keyNormalizedJsonUrl)
        guard let entries = try JSONSerialization.jsonObject(with: data) as? [String : [[String : Any]]] else {
            return
        }
        let keyValues = try FuzzyDictionary.getKeyValues(from: Array(entries))
        let filteredKeyValues = keyValues.filter { $0.1.pronunciations.contains { $0.count > 1 } }
        
        let cantoFizzyDict = FuzzyDictionary(keyValues: filteredKeyValues)
        let dataToSave = try cantoFizzyDict?.serializedData()
        try dataToSave?.write(to: fuzzyUrl)
    }

    func testDeserialization() throws {
        let data = try Data(contentsOf: fuzzyUrl)
        let cantoFizzyDict = try FuzzyDictionary(serializedData: data)
    }
    
    func testFunction() throws {
        let keyNormalizedJsonUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/keynormalized_kaifangcidian.json")
        let data = try Data(contentsOf: keyNormalizedJsonUrl)
        guard let entries = try JSONSerialization.jsonObject(with: data) as? [String : [[String : Any]]] else {
            return
        }
        
        let first100 = Array(entries.sorted { $0.key > $1.key }.prefix(100))
        
        var keyValues = try FuzzyDictionary.getKeyValues(from: first100)
        let 陷 = ("陷", CantoPhoneticInfo(pronunciations: [[.ham6]], offsetPairs: []))
        let 地 = ("地", CantoPhoneticInfo(pronunciations: [[.dei6]], offsetPairs: []))
        keyValues += [陷, 地]
        
        let fuzzyDict = FuzzyDictionary(keyValues: keyValues)
        
//        for e in first100 {
//            print(e.key, fuzzyDict.convertToSyllables(from: e.key.replacingOccurrences(of: " ", with: "")))
//        }
        
        print(fuzzyDict?.convertToSyllables(from: "不知所謂 大滾油"))
//        print(fuzzyDict.convertToSyllables(from: "一毛鎖友 一無所有 黑人憎 豆釘 癡線 自悲 的色 導引 一路一路 味水"))
    }
    
    func testPolyUJson() throws {
        let keyValues = try FuzzyDictionary.createKeyValuesFromPolyUJson()
        print(keyValues.prefix(100))
    }
    
    func testTermDerivatives() {
        let term = "short……x"
        let pronunication: [Syllable] = [.sot1, .ik1, .si4]
//        let pronunciationString = pronunication.encodedString
        let phoneticInfo = PhoneticInfo(pronunciations: [pronunication], offsetPairs: [(0..<5, 0..<1), (5..<7, 1..<1), (7..<8, 1..<3)])
        
        let termDerivatives = FuzzyDictionary.createTermDerivatives(keyValue: (term, phoneticInfo))
//        var lastTermPoint = term.startIndex
//        var lastPronunciationPoint = pronunciationString.startIndex
//
//        for (termPoint, pronunciationPoint) in termDerivatives.stringIndices {
//            print(term[lastTermPoint..<termPoint], pronunciationString[lastPronunciationPoint..<pronunciationPoint])
//            lastTermPoint = termPoint
//            lastPronunciationPoint = pronunciationPoint
//        }

        let combinations = self.combinations(count: termDerivatives.progression.count)
        

        for combination in combinations {
//            for pronunciationString in termDerivatives.pronunciationStrings {
//                let string = substitute(term: term, pronunciationString: pronunciationString, input: (zip(combination, termDerivatives.progression)))
//                print(string)
//            }
            let srs1 = StringRanges(combination: combination, termDerivatives: termDerivatives)
            
            let deletes = logicalDeletes(stringRanges: srs1, maxEditDistance: min(3, srs1.count / 3))
            print(deletes.map { $0.string(termDerivatives: termDerivatives) })
        }
    }
    
    func testNCR() {
        let n = 3
        
        var slots = [Bool](repeating: false, count: n)
        var slotsList = [[Bool]]()
        
        for i in 1..<n {
            booleans(prevPos: -1, length: n, rank: 1, total: i, bools: &slots, boolsList: &slotsList)
        }
        
        print(slotsList)
    }
    
    func testIntertwineds() {
        print(intertwine(bases: Array(zip("錢不是萬能的沒錢是萬萬不能的", "钱不是万能的没钱是万万不能的"))).count)
    }
    
    func logicalDeletes(stringRanges: StringRanges, maxEditDistance: Int) -> [StringRanges] {
        if maxEditDistance <= 0 {
            return []
        }
        
        var stringRanges = stringRanges
        var stringRangesList = [StringRanges]()
        
        for i in 1...maxEditDistance {
            booleans(prevPos: -1, length: stringRanges.count, rank: 1, total: i, bools: &stringRanges, boolsList: &stringRangesList)
        }
        
        return stringRangesList
    }
    
    func combinations(count: Int) -> [[Bool]] {
        var slots = [Bool](repeating: false, count: count)
        var slotsList = [[Bool]]()
        
        for i in 1..<count {
            booleans(prevPos: -1, length: count, rank: 1, total: i, bools: &slots, boolsList: &slotsList)
        }
        
        return slotsList
    }
    
    func booleans<B>(prevPos: Int, length: Int, rank: Int, total: Int, bools: inout B, boolsList: inout [B]) where B : Booleans {
        for i in (prevPos + 1)..<(length - total + rank) {
            if rank == total {
                bools[i] = true
                boolsList.append(bools)
                bools[i] = false
            } else {
                bools[i] = true
                booleans(prevPos: i, length: length, rank: rank + 1, total: total, bools: &bools, boolsList: &boolsList)
                bools[i] = false
            }
        }
    }
    
    func intertwine<E>(bases: [(E, E)]) -> [[E]] where E : Equatable {
        var intertwined = bases.map { $0.0 }
        var intertwineds = [intertwined]
        
        for i in 1..<bases.count {
            intertwine(prevPos: -1, length: bases.count, rank: 1, total: i, bases: bases, interwined: &intertwined, interwineds: &intertwineds)
        }
        
        return intertwineds
    }
    
    func intertwine<E>(prevPos: Int, length: Int, rank: Int, total: Int, bases: [(E, E)], interwined: inout [E], interwineds: inout [[E]]) where E : Equatable {
        for i in (prevPos + 1)..<(length - total + rank) where bases[i].0 != bases[i].1 {
            if rank == total {
                interwined[i] = bases[i].1
                interwineds.append(interwined)
                interwined[i] = bases[i].0
            } else {
                interwined[i] = bases[i].1
                intertwine(prevPos: i, length: length, rank: rank + 1, total: total, bases: bases, interwined: &interwined, interwineds: &interwineds)
                interwined[i] = bases[i].0
            }
        }
    }
    
//    func substitute<S>(term: String, pronunciationString: String, input: S) -> String where S : Sequence, S.Element == (Bool, TermDerivatives.ProgressionPointPair) {
//        var lastTermPoint = term.startIndex
//        var lastPronunciationPoint = pronunciationString.startIndex
//        var string = ""
//
//        for (slot, pointPair) in input {
//            if slot {
//                string += term[lastTermPoint..<pointPair.termPoint]
//            } else {
//                string += pronunciationString[lastPronunciationPoint..<pointPair.pronunciationPoint]
//            }
//
//            lastTermPoint = pointPair.termPoint
//            lastPronunciationPoint = pointPair.pronunciationPoint
//        }
//
//        return string
//    }
}

protocol Booleans {
    subscript(index: Int) -> Bool { get set }
}

extension StringRanges : Booleans {}
extension Array : Booleans where Element == Bool {}

struct StringRanges {
    private let combination: [Bool]
    private(set) fileprivate var logicalDeletes: [Bool]
    private var deleteIndices = IndexSet()
    private(set) var count = 0
    
    init(combination: [Bool], termDerivatives: TermDerivatives) {
        self.combination = combination
        
//        let pronunciationString = termDerivatives.pronunciationStrings[0]
//        var lastStart = pronunciationString.startIndex
        var lastStart = 0

        for (hasSlot, pointPair) in zip(combination, termDerivatives.progression) {
            if hasSlot {
//                count += pronunciationString.distance(from: lastStart, to: pointPair.pronunciationPoint)
                count += pointPair.pronunciationPoint - lastStart
            }
            lastStart = pointPair.pronunciationPoint
        }

        logicalDeletes = [Bool](repeating: false, count: count)
    }
    
    func string(termDerivatives: TermDerivatives) -> [String] {
        var logicalDeleteItr = logicalDeletes.makeIterator()
        
        let term = termDerivatives.term
//        let pronunciationStrings = termDerivatives.pronunciationStrings
        let pronunciationBytess = termDerivatives.pronunciationBytess
        
        var lastTermPoint = term.startIndex
//        var lastPronunciationPoint = pronunciationStrings[0].startIndex
        var lastPronunciationPoint = 0
        
//        var results = [String](repeating: "", count: pronunciationStrings.count)
        var results = [String](repeating: "", count: pronunciationBytess.count)
        
        for idx in deleteIndices {
            
        }
        
        for (hasSlot, pointPair) in zip(combination, termDerivatives.progression) {
            if hasSlot {
//                while lastPronunciationPoint < pointPair.pronunciationPoint {
//                    if logicalDeleteItr.next() == false {
//                        for i in results.indices {
//                            results[i].append(pronunciationStrings[i][lastPronunciationPoint])
//                        }
//                    }
//                    pronunciationStrings[0].formIndex(after: &lastPronunciationPoint)
//                }
                while lastPronunciationPoint < pointPair.pronunciationPoint {
                    if logicalDeleteItr.next() == false {
                        for i in results.indices {
//                            results[i].append(pronunciationBytess[i][lastPronunciationPoint])
                            results[i].append(Character(Unicode.Scalar(pronunciationBytess[i][lastPronunciationPoint])))
                        }
                    }
//                    pronunciationStrings[0].formIndex(after: &lastPronunciationPoint)
                    lastPronunciationPoint += 1
                }
            } else {
                for i in results.indices {
                    results[i] += term[lastTermPoint..<pointPair.termPoint]
                }
                lastTermPoint = pointPair.termPoint
            }
        }
        
        return results
    }
    
    mutating func remove(at index: Int) {
        if index >= count || index < 0 {
            fatalError("index out of bound")
        }
        
        var pos = 0

        guard let idx = (logicalDeletes.firstIndex {
            if !$0 {
                if pos == index {
                    return true
                } else {
                    pos += 1
                    return false
                }
            }
            return false
        }) else { return }

        logicalDeletes[idx] = true
        count -= 1
    }
    
    subscript(index: Int) -> Bool {
        get {
            return logicalDeletes[index]
//            return deleteIndices.contains(index)
        }
        set {
            logicalDeletes[index] = newValue
//            if newValue {
//                deleteIndices.insert(index)
//            } else {
//                deleteIndices.remove(index)
//            }
        }
    }
}
