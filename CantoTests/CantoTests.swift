//
//  CantoTests.swift
//  CantoTests
//
//  Created by Resonance on 8/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import XCTest
@testable import Canto

class CantoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSyllable() {
        let syllable1 = Syllable.zik3
        XCTAssertFalse(syllable1.isFuzzy(of: .zit1))
        XCTAssertEqual(syllable1.pseudoIPA, "ʣek3")
        
        let syllable2 = Syllable.sang1
        XCTAssertTrue(syllable2.isFuzzy(of: .san1))
        XCTAssertEqual(syllable2.pseudoIPA, "sɐŋ1")
        
        let syllable3 = Syllable.hon1
        XCTAssertTrue(syllable3.isFuzzy(of: .hong1))
        
        let syllable4 = Syllable.ngan4
        XCTAssertTrue(syllable4.isFuzzy(of: .an4))
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let cidianKVs = try CantoDictionary.getKeyValuesFromCidian()
        let polyUSource = try createPolyUSource()
        
        outer:
        for (word, syllables) in cidianKVs {
            let word = word.firstIndex(of: "，").map { var word = word; word.remove(at: $0); return word } ?? word
            XCTAssertEqual(word.count, syllables.syllables.count, "word: \(word), syllables: \(syllables.syllables)")
            if word.count != syllables.syllables.count { continue }
            
            for (char, syllable) in zip(word, syllables.syllables) {
                let char = String(char)
                guard let polyUSyllables = polyUSource[char] else {
//                        throw AssertError(message: "word: \(word), syllables: \(syllables.syllables), char: \(char)")
                    XCTFail("word: \(word), syllables: \(syllables.syllables), char: \(char)")
                    continue outer
                }
                XCTAssertTrue(polyUSyllables.contains(syllable), "word: \(word) char: \(char) polyUSyllables: \(polyUSyllables) syllable: \(syllable)")
            }
            
        }
    }

    private func createPolyUSource() throws -> [String : [Syllable]] {
        let url = URL(fileURLWithPath: "/Users/Resonance/Documents/Developer/ChineseInputDictionary/common/Assets/Data/charToJyutPing.json")
        let data = try Data(contentsOf: url)
        let dict = try JSONDecoder().decode([String : [String]].self, from: data)
        return dict.mapValues { $0.compactMap { Syllable(jyutPing: $0) } }
    }
    
    struct AssertError : Error {
        let message: String
    }
}
