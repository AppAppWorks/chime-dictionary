//
//  Dictionary.swift
//  BaseDictionary
//
//  Created by Resonance on 7/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import DnA

public class DictionaryImpl<P> : DictionaryProtocol where P : Syllables {
    public typealias SyllableTrie = AhoCorasickDoubleArrayTrie<P>
    
    private struct SyllableError : Error {
        let syllableName: String
    }
    
    var trie = SyllableTrie()
    
    public required init?(serializedData: Data) {
        guard let trie = SyllableTrie(serializedData: serializedData) else {
            return nil
        }
        self.trie = trie
    }
    
    public init<S>(keyValuesProvider: @autoclosure () -> S) where S : Sequence, S.Element == (String, P) {
        let keyValues = keyValuesProvider().sorted { $0.0 < $1.0 }
        trie.build(map: keyValues)
    }
    
    public subscript(key: String) -> P? {
        return trie[key]
    }
    
    public func convertToSyllables(from text: String, remainsNone: Bool = true) -> Converted {
        return segLongest(text: text, trie: trie, remainsNone: remainsNone)
    }
    
    func segLongest(text: String, trie: SyllableTrie, remainsNone: Bool = true) -> Converted {
        let textCount = text.count
        var wordNet = [P?](repeating: nil, count: textCount)
        var termNet = [Substring?](repeating: nil, count: textCount)
        var strIdx = StrIdx(text: text)
        trie.parse(text: text) { begin, end, value in
            //            print("begin: \(begin) end: \(end) value: \(value)")
            let length = end - begin
            if (wordNet[begin].map { length > $0.count }) ?? true {
                if let value = value {
                    wordNet[begin] = length == 1 ? value.first : value
                    let startIdx = strIdx.index(moveTo: begin)
                    let endIdx = strIdx.index(moveTo: end)
                    termNet[begin] = text[startIdx..<endIdx]
                }
            }
        }
        var syllables = [P]()
        syllables.reserveCapacity(textCount)
        var terms = [Substring]()
        var offset = 0
        strIdx = StrIdx(text: text)
        while offset < textCount {
            guard let words = wordNet[offset] else {
                if remainsNone {
                    syllables.append(.getNone())
                    let idx = strIdx.index(moveTo: offset)
                    terms.append(text[idx...idx])
                }
                offset += 1
                continue
            }
            syllables.append(words)
            terms.append(termNet[offset]!)
            offset += words.count
        }
        return (syllables, terms)
    }
    
    public class Searcher : BaseSearcher<P> {
        var begin = 0
        let trie: DoubleArrayTrie<P>
        
        init<S>(text: S, trie: DoubleArrayTrie<P>) where S : Sequence, S.Element == Character {
            self.trie = trie
            super.init(text: text)
        }
        
        public override func next() -> (String, P?)? {
            var result: (String, P?)?
            while begin < text.count {
                let entryList = trie.commonPrefixSearchWithValue(key: text, begin: begin)
                if let lastResult = entryList.last?.value {
                    result = lastResult
                    offset = begin
                    begin += lastResult.0.count
                    break
                } else {
                    begin += 1
                }
            }
            return result
        }
    }
}

extension DictionaryImpl {
    public func serializedData() throws -> Data {
        return try trie.serializedData()
    }
}

private struct StrIdx {
    let text: String
    private(set) var idx: Int
    private(set) var strIdx: String.Index
    
    mutating func index(offsetBy: Int) -> String.Index {
        text.formIndex(&strIdx, offsetBy: offsetBy)
        idx += offsetBy
        return strIdx
    }
    
    mutating func index(moveTo: Int) -> String.Index {
        text.formIndex(&strIdx, offsetBy: moveTo - idx)
        idx = moveTo
        return strIdx
    }
    
    init(text: String, idx: Int, strIdx: String.Index) {
        self.text = text
        self.idx = idx
        self.strIdx = strIdx
    }
    
    init(text: String, idx: Int = 0) {
        self.init(text: text, idx: idx, strIdx: text.startIndex)
    }
}
