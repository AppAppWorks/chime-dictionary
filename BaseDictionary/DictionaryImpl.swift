//
//  Dictionary.swift
//  BaseDictionary
//
//  Created by Resonance on 7/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import DnA

public class DictionaryImpl<P> : DictionaryProtocol where P : Syllables {
    typealias DirectTrie = AhoCorasickDoubleArrayTrie<SerializeableValue<P>>
    typealias IndirectTrie = AhoCorasickDoubleArrayTrie<IndexValue>
    
    enum TrieType {
        case direct(trie: DirectTrie)
        case indirect(trie: IndirectTrie, values: [P])
        
        subscript(key: String) -> [P]? {
            switch self {
            case .direct(let trie): return trie[key].map { [$0] }
            case .indirect(let trie, let values):
                return trie[key].map { $0.map { values[$0] } }
            }
        }
        
        func parse(text: String, processor: (_ begin: Int, _ end: Int, _ value: [P]?) -> Void) {
            switch self {
            case .direct(let trie):
                trie.parse(text: text) { begin, end, value in
                    processor(begin, end, value.map { [$0] })
                }
            case .indirect(let trie, let values):
                trie.parse(text: text) { begin, end, indices in
                    processor(begin, end, indices.map { $0.map { values[$0] } })
                }
            }
        }
    }
    
    private struct SyllableError : Error {
        let syllableName: String
    }
    
    var trieType: TrieType!
    
    public required init(serializedData: Data) throws {
        let persistent = try DictionaryImplPst(serializedData: serializedData)
        
        switch persistent.trieType! {
        case .directTrieData(let data):
            trieType = .direct(trie: try DirectTrie(serializedData: data))
        case .indirectTrie(let indirectTrie):
            let values = try indirectTrie.values.map { try P(serializedData: $0) }
            trieType = .indirect(trie: try IndirectTrie(serializedData: indirectTrie.trieData), values: values)
        }
    }
    
    public init<S>(keyValuesProvider: @autoclosure () -> S) where S : Sequence, S.Element == (String, P) {
        let keyValues = keyValuesProvider().sorted { $0.0 < $1.0 }
        var trie = DirectTrie()
        trie.build(map: keyValues)
        trieType = .direct(trie: trie)
    }
    
    public init<S>(keyIndicesProvider: @autoclosure () -> S, values: [P]) where S : Sequence, S.Element == (String, [Int]) {
        let keyIndices = keyIndicesProvider().sorted { $0.0 < $1.0 }
        var trie = IndirectTrie()
        trie.build(map: keyIndices)
        trieType = .indirect(trie: trie, values: values)
    }
    
    public subscript(key: String) -> [P]? {
        return trieType[key]
    }
    
    public func convertToSyllables(from text: String, remainsNone: Bool, tcsc: TCSC, variantTransform: VariantTransform) -> Converted {
        return segLongest(text: text, trieType: trieType, remainsNone: remainsNone, tcsc: tcsc, variantTransform: variantTransform)
    }
    
    func segLongest(text originalText: String, trieType: TrieType, remainsNone: Bool = true, tcsc: TCSC, variantTransform: VariantTransform) -> Converted {
        let text = tcsc.convertForSearch(text: originalText)
        
        let textCount = text.count
        var wordNet = [[P]?](repeating: nil, count: textCount)
        var termNet = [Substring?](repeating: nil, count: textCount)
        var strIdx = StrIdx(text: text)
        trieType.parse(text: text) { begin, end, value in
//                        print("begin: \(begin) end: \(end) value: \(value)")
            let length = end - begin
            if (wordNet[begin].map { length > $0[0].count }) ?? true {
                if let value = value {
                    wordNet[begin] = length == 1 ? value.map { $0.first } : value
                    let startIdx = strIdx.index(moveTo: begin)
                    let endIdx = strIdx.index(moveTo: end)
                    termNet[begin] = originalText[startIdx..<endIdx]
                }
            }
        }
        var syllables = [[P]]()
        syllables.reserveCapacity(textCount)
        var terms = [Substring]()
        var offset = 0
        strIdx = StrIdx(text: text)
        while offset < textCount {
            guard let words = wordNet[offset] else {
                if remainsNone {
                    syllables.append([.getNone()])
                    let idx = strIdx.index(moveTo: offset)
                    terms.append(text[idx...idx])
                }
                offset += 1
                continue
            }
            syllables.append(words)
            terms.append(termNet[offset]!)
            offset += words[0].count
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
        let persistent = try DictionaryImplPst.with {
            switch trieType! {
            case .direct(let trie):
                $0.trieType = .directTrieData(try trie.serializedData())
            case .indirect(let trie, let values):
                let indirectTrie = try DictionaryImplPst.IndirectTrie.with {
                    $0.trieData = try trie.serializedData()
                    $0.values = try values.map { try $0.serializedData() }
                }
                $0.trieType = .indirectTrie(indirectTrie)
            }
        }
        
        return try persistent.serializedData()
    }
}

struct StrIdx {
    let text: String
    private(set) var idx: Int
    private(set) var strIdx: String.Index
    
    mutating func index(offsetBy: Int) -> String.Index {
    }     text.formIndex(&strIdx, offsetBy: offsetBy)
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
