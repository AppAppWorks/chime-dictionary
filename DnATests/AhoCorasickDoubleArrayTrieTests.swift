//
//  AhoCorasickDoubleArrayTrieTests.swift
//  DnATests
//
//  Created by Resonance on 26/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import XCTest
@testable import DnA

class AhoCorasickDoubleArrayTrieTest : XCTestCase {
    private let datPath = "/Users/Resonance/Documents/HanLP/data/dictionary/CoreNatureDictionary.mini.txt"
    
    func testTwoAC() {
        guard let streamReader = StreamReader(path: datPath) else {
            return
        }

        let map: [String : String] = streamReader.reduce(into: [:]) {
            let word = $1.components(separatedBy: .whitespaces)[0]
            $0[word] = word
        }

        let sortedMap = map.sorted { $0.key < $1.key }
        let mapKeys = sortedMap.map { $0.key }
        let trie = Trie()
        trie.add(allKeywords: mapKeys)
        var act = AhoCorasickDoubleArrayTrie<String>()
        act.build(map: sortedMap)

//        measure {
            for key in mapKeys {
                let emits = trie.parse(text: key)
                let otherSet: Set = emits.reduce(into: []) { $0.insert("\($1.keyword)\($1.end)") }
                
                let entries = act.parse(text: key)
//                let entriesString = entries.map { "\($0.value!)\($0.end - 1)" }
                let mySet: Set = entries.reduce(into: []) { $0.insert("\($1.value!)\($1.end - 1)") }
                
//                XCTAssert(otherSet.union(entriesString).count == otherSet.count)
                XCTAssertEqual(otherSet, mySet)
            }
//        }
    }
    
    func testAhoTrie() {
        guard let streamReader = StreamReader(path: datPath) else {
            return
        }
        
        let sortedKeys = streamReader.map {
            $0.components(separatedBy: .whitespaces)[0]
            }.sorted()
            .map { ($0, $0) }
        var act = AhoCorasickDoubleArrayTrie<String>()
        act.build(map: sortedKeys)
        
        print(act.commonPrefixSearch(key: "不可一日", range: 1..<4).map { act[$0] })
        print(act.commonPrefixSearchWithValue(key: "不可一日", begin: 0))
    }
    
    func testIO() throws {
        let datUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/Example.pb")
        if let data = try? Data(contentsOf: datUrl) {
            let act = AhoCorasickDoubleArrayTrie<String>(serializedData: data)
        }
        
        let sortedMap = try getSortedMap()
        
        var act = AhoCorasickDoubleArrayTrie<String>()
        act.build(map: sortedMap)
        
        let data = try act.serializedData()
        try data.write(to: datUrl)
    }
    
    func testPersistent() throws {
        let sortedMap = try getSortedMap()
        
        var act = AhoCorasickDoubleArrayTrie<String>()
        act.build(map: sortedMap)
        
//        let data = try act.serializedData()
//        let act2 = AhoCorasickDoubleArrayTrie<String>(serializedData: data)
//
//        compare(act: act2!, mapKeys: sortedMap.map { $0.key })
    }
    
    private func getSortedMap() throws -> [(key: String, value: String)] {
        let datUrl = URL(fileURLWithPath: "/Users/Resonance/Documents/HanLP/data/dictionary/CoreNatureDictionary.mini.txt")
        
        let lines = try String(contentsOf: datUrl).split(separator: "\n").map({ String($0) })
        let map: [String : String] = lines.reduce(into: [:]) {
            let word = $1.components(separatedBy: .whitespaces)[0]
            $0[word] = word
        }
        
        return map.sorted { $0.key < $1.key }
    }
    
    private func compare(act: AhoCorasickDoubleArrayTrie<String>, mapKeys: [String]) {
        let trie = Trie()
        trie.add(allKeywords: mapKeys)
        
        for key in mapKeys {
            let emits = trie.parse(text: key)
            let otherSet: Set = emits.reduce(into: []) { $0.insert("\($1.keyword)\($1.end)") }
            
            let entries = act.parse(text: key)
            let mySet: Set = entries.reduce(into: []) { $0.insert("\($1.value!)\($1.end - 1)") }
            
            XCTAssertEqual(otherSet, mySet)
        }
    }
}
