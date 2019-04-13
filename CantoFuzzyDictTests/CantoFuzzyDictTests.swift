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
//        print(fuzzyDict.convertToSyllables(from: "一毛鎖友 一無所有 黑人憎 豆釘"))
    }
    
    func testPolyUJson() throws {
        let keyValues = try CantoFuzzyDict.createKeyValuesFromPolyUJson()
        print(keyValues.prefix(100))
    }
    
    func testSomething1() {
        let bytes: [UInt8] = Array(0..<128)
        let seed = String(bytes: bytes, encoding: .utf8)!
        String(repeating: seed, count: 100000)
        sleep(10000)
    }
    
    func testSomething2() {
        [UInt8](repeating: 0, count: 12800000)
        sleep(10000)
    }
}
