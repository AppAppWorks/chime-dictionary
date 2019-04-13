//
//  PinyinTests.swift
//  PinyinTests
//
//  Created by Resonance on 31/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import XCTest
@testable import Pinyin
@testable import DnA

class PinyinTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPhoneme() {
        var bopomofos = [Syllable : String]()
        for phoneme in Syllable.allCases {
            if let bopomofo = bopomofos[phoneme] {
                XCTAssertEqual(bopomofo, phoneme.bopomofo, "\(phoneme)")
            } else {
                bopomofos[phoneme] = phoneme.bopomofo
            }
        }
        print(bopomofos)
    }
    
    func testLoadJson() throws {
        let url = URL(fileURLWithPath: "/Users/Resonance/Downloads/moedict-data-master/dict-revised.json")
        let data = try Data(contentsOf: url)
        let jsonObject = try JSONDecoder().decode([ROCEntry].self, from: data)
        
//        print(jsonObject.filter { $0.heteronyms.first?.pinyin?.split(separator: " ").count > 1 }.map { $0.title })
        let lines = jsonObject.filter { $0.heteronyms.first?.pinyin != nil }.map { "\($0.title)=\($0.heteronyms[0].pinyin!)" }
        let concatLines = lines.joined(separator: "\n")
        try concatLines.write(to: URL(fileURLWithPath: "/Users/Resonance/Downloads/moedict-data-master/dict-revised.txt"), atomically: true, encoding: .utf8)
    }
    
    func testChinasJson() throws {
        let url = URL(fileURLWithPath: "/Users/Resonance/Downloads/moedict-data-csld-master/dict-csld.json")
        let data = try Data(contentsOf: url)
        let jsonObject = try JSONDecoder().decode([ChinasEntry].self, from: data)
        
        let lines = jsonObject.filter { $0.heteronyms.first?.pinyin?.contains("陸⃝") == true }.flatMap { entry in
            entry.heteronyms.filter {
                $0.bopomofo != nil
                }.map {
                   "\(entry.title)=\($0.bopomofo!)"
            }
        }
        let concatLines = lines.joined(separator: "\n")
        try concatLines.write(to: URL(fileURLWithPath: "/Users/Resonance/Downloads/moedict-data-csld-master/dict-csld.txt"), atomically: true, encoding: .utf8)
    }
    
    private struct ROCEntry : Codable {
        enum CodingKeys : String, CodingKey {
            case heteronyms = "heteronyms"
            case nonRadicalStrokeCount = "non_radical_stroke_count"
            case radical = "radical"
            case strokeCount = "stroke_count"
            case title = "title"
        }
        
        fileprivate struct Heteronym : Codable {
            fileprivate struct Definition : Codable {
                let def: String
                let example: [String]?
                let link: [String]?
                let quote: [String]?
                let synonyms: String?
                let type: String?
            }
            
            let bopomofo: String?
            let definitions: [Definition]
            let pinyin: String?
        }
        
        let heteronyms: [Heteronym]
        let nonRadicalStrokeCount: Int?
        let radical: String?
        let strokeCount: Int?
        let title: String
    }
    
    private struct ChinasEntry : Codable {
        enum CodingKeys : String, CodingKey {
            case heteronyms = "heteronyms"
            case nonRadicalStrokeCount = "non_radical_stroke_count"
            case radical = "radical"
            case strokeCount = "stroke_count"
            case title = "title"
        }
        
        fileprivate struct Heteronym : Codable {
            fileprivate struct Definition : Codable {
                let def: String
                let example: [String]?
            }
            
            let alt: String?
            let bopomofo: String?
            let definitions: [Definition]
            let id: String
            let pinyin: String?
        }
        
        let heteronyms: [Heteronym]
        let nonRadicalStrokeCount: Int?
        let radical: String?
        let strokeCount: Int?
        let title: String
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        let pinyin = PinyinDictionary.shared.convertToPinyin(from: "会计师衣著著急")
//        print(pinyin)
        
//        let s2 = "你好，欢迎使用HanLP汉语处理包！接下来请从其他Demo中体验HanLP丰富的功能~"
//        s2.enumerateSubstrings(in: s2.startIndex..<s2.endIndex, options: .byWords) { (substring, _, _, end) in
//            print(substring)
//        }
//        let s2 = "抱蔓摘瓜"
        let s2 = "一日三秋一时疏忽"
        let p2 = try! PinyinDictionary().convertToSyllables(from: s2)
        print(p2)
    }
    
    let pinyinDictUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/PinyinDict.pb")
    
    func testSerialize() throws {
        let dict = try PinyinDictionary()
        let data = try dict.serializedData()
        
        try data.write(to: pinyinDictUrl, options: [.atomic])
    }
    
    func testDeserialize() throws {
        let data = try Data(contentsOf: pinyinDictUrl)
        let dict = try PinyinDictionary(serializedData: data)
        let s2 = "一日三秋一时疏忽"
        let p2 = dict.convertToSyllables(from: s2)
        print(p2)
    }
    
//    func testDeserialie()

    func testDict() {
        let dictionary = StringDictionary(separator: "=")
        do {
            try dictionary.load(path: "/Users/Resonance/Documents/HanLP/data/dictionary/pinyin/pinyin.txt")
            print(dictionary.entrySet)
        } catch {
            debugPrint("failed to read file, \(error)")
//            return false
        }
    }
    
    func testJyutpingJson() throws {
        let url = URL(fileURLWithPath: "/Users/Resonance/Documents/Developer/ChineseInputDictionary/common/Assets/Data/jyutPingToChar.json")
        let data = try Data(contentsOf: url)
        let dict = try JSONDecoder().decode([String : [String]].self, from: data)
        dict.keys.sorted().forEach {
            print("case \($0)")
        }
    }
    
    func testTest() {
        
    }
}

protocol A {
    associatedtype B
    static var b: B? { get }
}

extension A {
    static var b: B? { return nil }
}

struct A1 : A {
    static var b: Int? { return nil }
}

class C<D> where D : A {
    func a() {
        D.b
    }
}

func a() {
    let c = C<A1>()
}
