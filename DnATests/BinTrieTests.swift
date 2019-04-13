//
//  BinTrieTests.swift
//  DnATests
//
//  Created by Resonance on 31/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import XCTest
import DnA

class BinTrieTests : XCTestCase {
    func testParseText() {
        let trie = BinTrie<String>()
        let keys = ["he", "her", "his"]
        keys.forEach { trie[$0] = $0 }
        let text = " her4he7his "
        trie.parse(text: text) { begin, end, value in
            XCTAssertEqual(value, String(text[text.index(text.startIndex, offsetBy: begin)..<text.index(text.startIndex, offsetBy: end)]))
        }
    }
    
    func testPut() {
        let trie = BinTrie<Bool>()
        trie["加入"] = true
        trie["加入"] = false
        
        XCTAssertEqual(false, trie["加入"])
    }
    
    func testArrayIndexOutOfBoundsException() {
        let trie = BinTrie<Bool>()
        trie["\u{ffff}"] = true
    }
}
