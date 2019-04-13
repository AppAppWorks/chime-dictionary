//
//  DoubleArrayTrieTests.swift
//  DnATests
//
//  Created by Resonance on 24/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import XCTest
import DnA

class DoubleArrayTrieTests : XCTestCase {
    func testDatFromFile() {
        let datUrl = URL(fileURLWithPath: "/Users/Resonance/Documents/HanLP/data/dictionary/CoreNatureDictionary.mini.txt")
        
        do {
            let lines = try String(contentsOf: datUrl).split(separator: "\n").map({ String($0) })
            let map = lines.reduce(into: [:]) {
                $0[$1] = $1
            }
            let trie = DoubleArrayTrie<String>()
            trie.build(keyValuePairs: map.sorted { $0.key < $1.key })
            for key in map.keys {
                XCTAssertEqual(key, trie[key])
            }
        } catch {
            assertionFailure(error.localizedDescription)
        }
    }
    
    func testLongestSearcher() throws {
        let map = ["he", "her", "his"].reduce(into: [:]) {
            $0[$1] = $1
        }
        let trie = try DoubleArrayTrie(keyValuePairs: map.sorted { $0.key < $1.key })
        let text = "her3he6his-hers! "
        let chars = Array(text)
        var searcher = trie.longestSearcher(text: text, offset: 0)
        while let result = searcher.next() {
            XCTAssertEqual(result.value, String(chars[result.begin..<result.begin + result.length]))
        }
    }
    
    func testHandleEmptyString() throws {
        let emptyString = ""
        let dat = DoubleArrayTrie<String>()
        let dictionary = ["bug" : "问题"]
        dat.build(keyValuePairs: dictionary.sorted { $0.key < $1.key })
        var searcher = dat.searcher(text: emptyString, offset: 0)
        while let result = searcher.next() {
            XCTFail("\(result)")
        }
    }
    
    func testIssue966() throws {
        let map = "001乡道, 北京, 北京市通信公司, 来广营乡, 通州区".components(separatedBy: ", ").reduce(into: [:]) {
            $0[$1] = $1
        }
        let trie = try DoubleArrayTrie(keyValuePairs: map.sorted { $0.key < $1.key })
        var searcher = trie.longestSearcher(text: "北京市通州区001乡道发生了一件有意思的事情，来广营乡歌舞队正在跳舞", offset: 0)
        while let result = searcher.next() {
            print("\(result.begin) \(result.value)")
        }
    }
}
