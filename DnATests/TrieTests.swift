//
//  TrieTests.swift
//  DnATests
//
//  Created by Resonance on 28/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import XCTest
import DnA

class TrieTests : XCTestCase {
    func testHasKeyword() {
        let keys = ["hers", "his", "she", "he"]
        let map = keys.reduce(into: [:]) {
            $0[$1] = $1
        }
        let trie = Trie()
        trie.add(allKeywords: map.keys.sorted())
        for key in keys {
            XCTAssertTrue(trie.hasKeyword(text: key))
        }
        XCTAssertTrue(trie.hasKeyword(text: "ushers"))
        XCTAssertFalse(trie.hasKeyword(text: "构建耗时"))
    }
    
    func testParseText() {
        let keys = ["hers", "his", "she", "he"]
        let map = keys.reduce(into: [:]) {
            $0[$1] = $1
        }
        var act = AhoCorasickDoubleArrayTrie<String>()
        act.build(map: map.sorted { $0.key < $1.key })
        let text = "uhers"
        act.parse(text: text) { begin, end, value in
            XCTAssertEqual(value, String(text[text.index(text.startIndex, offsetBy: begin)..<text.index(text.startIndex, offsetBy: end)]))
        }
    }
}

