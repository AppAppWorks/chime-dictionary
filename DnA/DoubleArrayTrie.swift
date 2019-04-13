//
//  DoubleArrayTrie.swift
//  Pinyin
//
//  Created by Resonance on 21/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import Foundation

private let kBufSize = 16384
private let kUnitSize = 8

public class DoubleArrayTrie<V> : ITrie, Serializable where V : Serializable {
    private struct Error : Swift.Error {
        let message: String
    }
    
    private struct Node {
        let code: Int
        let depth: Int
        let left: Int
        var right: Int
    }
    
    public internal(set) var check = [Int]()
    public internal(set) var base = [Int]()
    
    private var used = [Bool]()
    
    public var size: Int {
        return _size
    }
    var _size = 0
    private var allocSize = 0
    private var key = [String]()
    private var keySize = 0
    private var length: [Int]?
    private var value: [Int]?
    public internal(set) var v = [V?]()
    private var progress = 0
    private var nextCheckPos = 0
    
    fileprivate var error_ = 0
    
    public var unitSize: Int {
        return kUnitSize
    }
    
    public var totalSize: Int {
        return size * kUnitSize
    }
    
    public var nonZeroSize: Int {
        return check.reduce(0, {
            $1 != 0 ? $0 + 1 : $0
        })
    }
    
    public subscript(index: Int) -> V? {
        return v[index]
    }
    
    public subscript(key: String) -> V? {
        get {
            let index = exactMatchSearch(key: key)
            if index >= 0 {
                return self[index]
            }
            return nil
        }
        set {
            let index = exactMatchSearch(key: key)
            if index >= 0 {
                v[index] = newValue
            }
        }
    }
    
    public init() {}
    
    public init<S>(keyValuePairs: S) throws where S : Sequence, S.Element == (String, V) {
        if build(keyValuePairs: keyValuePairs) != 0 {
            throw Error(message: "failed to construct")
        }
    }
    
    required public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        base = try container.decode([Int].self)
        check = try container.decode([Int].self)
    }
    
    public required init(serializedData: Data) throws {
        let persistent = try AhoCorasickDoubleArrayTriePst(serializedData: serializedData)
        base = persistent.base.map { Int($0) }
        check = persistent.check.map { Int($0) }
    }
    
    private func resize(newSize: Int) {
        if allocSize > 0 {
            base.reserveCapacity(newSize)
            check.reserveCapacity(newSize)
            used.reserveCapacity(newSize)
            
            for _ in allocSize..<newSize {
                base.append(0)
                check.append(0)
                used.append(false)
            }
        } else {
            base = Array(repeating: 0, count: newSize)
            check = Array(repeating: 0, count: newSize)
            used = Array(repeating: false, count: newSize)
        }
        
        allocSize = newSize
    }
    
    private func fetch(parent: Node) -> (Int, [Node]) {
        if error_ < 0 {
            return (0, [])
        }
        
        var prev = 0
        var siblings = [Node]()
        
        for i in parent.left..<parent.right {
            if (length?[i] ?? key[i].count) < parent.depth {
                continue
            }
            
            let tmp = key[i]
            
            var cur = 0
            if (length?[i] ?? tmp.count) != parent.depth {
                cur = tmp[tmp.index(tmp.startIndex, offsetBy: parent.depth)].codePoint + 1
            }
            
            if prev > cur {
                error_ = -3
                return (0, siblings)
            }
            
            if cur != prev || siblings.isEmpty {
                let tmpNode = Node(code: cur, depth: parent.depth + 1, left: i, right: 0)
                if !siblings.isEmpty {
                    siblings[siblings.count - 1].right = i
                }
                
                siblings.append(tmpNode)
            }
            
            prev = cur
        }
        
        if !siblings.isEmpty {
            siblings[siblings.count - 1].right = parent.right
        }
        
        return (siblings.count, siblings)
    }
    
    @discardableResult
    private func insert(siblings: [Node]) -> Int {
        if error_ < 0 {
            return 0
        }
        
        var begin = 0
        var pos = max(siblings[0].code + 1, nextCheckPos) - 1
        var nonZeroNum = 0
        var first = 0
        
        if allocSize <= pos {
            resize(newSize: pos + 1)
        }
        
        // the target of this iteration is to find the n idle spaces fulfilling base[begin + a1...an], a1...an are n nodes in siblings
        outer: while true {
            pos += 1
            
            if allocSize <= pos {
                resize(newSize: pos + 1)
            }
            
            if check[pos] != 0 {
                nonZeroNum += 1
                continue
            } else if first == 0 {
                nextCheckPos = pos
                first = 1
            }
            
            begin = pos - siblings[0].code
            if allocSize <= (begin + siblings.last!.code) {
                resize(newSize: begin + siblings.last!.code + 0xFFFF)
            }
            
            if used[begin] {
                continue
            }
            
            for sibling in siblings.dropFirst() {
                if check[begin + sibling.code] != 0 {
                    continue outer
                }
            }
            
            break
        }
        
        // -- Simple heuristics --
        // if the percentage of non-empty contents in check between the
        // index
        // 'next_check_pos' and 'check' is greater than some constant value
        // (e.g. 0.9),
        // new 'next_check_pos' index is written by 'check'.
        if Double(nonZeroNum) / Double(pos - nextCheckPos + 1) >= 0.95 {
            nextCheckPos = pos // if occupied spaces between nextCheckPos to pos constitute >95%, directly start searching at pos next time when inserting a node
        }
        
        used[begin] = true
        
        _size = (_size > begin + siblings.last!.code + 1) ? _size : begin + siblings.last!.code + 1
        
        for sibling in siblings {
            check[begin + sibling.code] = begin
        }
        
        for sibling in siblings {
            let (fetchCode, newSiblings) = fetch(parent: sibling)
            
            if fetchCode == 0 { // the end of a word while not being a suffix of any other word
                base[begin + sibling.code] = value.map { -$0[sibling.left] - 1 } ?? -sibling.left - 1
                
                if let value = value, -value[sibling.left] - 1 >= 0 {
                    error_ = -2
                    return 0
                }
                
                progress += 1
            } else {
                let h = insert(siblings: newSiblings)
                base[begin + sibling.code] = h
            }
        }
        return begin
    }
    
    func clear() {
        check.removeAll()
        base.removeAll()
        used.removeAll()
        allocSize = 0
        _size = 0
    }
    
    @discardableResult
    public func build(key: [String], value: [V]) -> Int {
        v = value
        return build(key: key, keySize: key.count)
    }
    
    @discardableResult
    public func build<S>(keyValuePairs: S) -> Int where S : Sequence, S.Element == (String, V) {
        let pairCount = keyValuePairs.underestimatedCount
        var keys = [String]()
        keys.reserveCapacity(pairCount)
        var values = [V]()
        values.reserveCapacity(pairCount)
        keyValuePairs.forEach {
            keys.append($0)
            values.append($1)
        }
        return build(key: keys, value: values)
    }
    
    /// - Parameter key: the set of values, must be in order with the dictionary
    /// - Parameter length: corresponds to the length of each key, leave blank for dynamic retrieval
    /// - Parameter value: the corresponding value of each key, leave blank to use the lowerbound of key
    /// - Parameter keySize: the count of key, should be set as key.count
    @discardableResult
    public func build(key: [String], length: [Int]? = nil, value: [Int]? = nil, keySize: Int) -> Int {
        if keySize > key.count {
            return 0
        }
        
        self.key = key
        self.length = length
        self.keySize = keySize
        self.value = value
        progress = 0
        
        resize(newSize: 65536 * 32)
        
        base[0] = 1
        nextCheckPos = 0
        
        let rootNode = Node(code: 0, depth: 0, left: 0, right: keySize)
        
        let (_, siblings) = fetch(parent: rootNode)
        insert(siblings: siblings)
        shrink()
        
        used = []
        self.key = []
        self.length = nil
        
        return error_
    }
    
    /// - Parameter range: the range to run the search
    /// - Parameter nodePos: the position to start searching
    /// - returns: the value ID of the node searched, a negative integer indicates non-existence
    public func exactMatchSearch(key: String, range: Range<UInt> = 0..<0, nodePos: Int = 0) -> Int {
        var result = -1
        let range = range.upperBound == 0 ? Int(range.lowerBound)..<key.count : Int(range.lowerBound)..<Int(range.upperBound)
        
        var b = base[nodePos]
        var p = 0
        
        for i in range {
            p = b + key[key.index(key.startIndex, offsetBy: i)].codePoint + 1
            if b == check[p] {
                b = base[p]
            } else {
                return result
            }
        }
        
        p = b
        let n = base[p]
        if b == check[p] && n < 0 {
            result = -n - 1
        }
        return result
    }
    
    public func commonPrefixSearch(key: String, range: Range<UInt> = 0..<0, nodePos: UInt = 0) -> [Int] {
        let range = range.map { key.index(key.startIndex, offsetBy: Int($0)) }.lazy
        
        let nodePos = Int(nodePos)
        var result = [Int]()
        
        var b = base[nodePos]
        var n = 0
        var p = 0
        
        for i in range {
            p = b + key[i].codePoint + 1
            if b == check[p] {
                b = base[p]
            } else {
                return result
            }
            p = b
            n = base[p]
            if b == check[p] && n < 0 {
                result.append(-n - 1)
            }
        }
        
        return result
    }
    
    public func commonPrefixSearchWithValue(key: String, begin: Int) -> LinkedList<(String, V?)> {
        let len = key.count
        let result = LinkedList<(String, V?)>()
        var b = base[0]
        var n = 0
        var p = 0
        
        for i in begin..<len {
            p = b
            n = base[p]
            if b == check[p] && n < 0 {
                result.append((String(key[key.range(begin..<(i - begin))]), v[-n - 1]))
            }
            
            p = b + key[key.index(key.startIndex, offsetBy: i)].codePoint + 1
            if b == check[p] {
                b = base[p]
            } else {
                return result
            }
        }
        
        p = b
        n = base[p]
        
        if b == check[p] && n < 0 {
            result.append((String(key[key.range(begin..<(len - begin))]), v[-n - 1]))
        }
        
        return result
    }
    
    public func contains(key: String) -> Bool {
        return exactMatchSearch(key: key) >= 0
    }
    
    func transition(path: String) -> Int {
        var b = base[0]
        var p = 0
        
        for c in path {
            p = b + c.codePoint + 1
            if b == check[p] {
                b = base[p]
            } else {
                return -1
            }
        }
        
        p = b
        return p
    }
    
    public func transition(c: Character, from: Int) -> Int {
        var b = from
        var p = 0
        
        p = b + c.codePoint + 1
        if b == check[p] {
            b = base[p]
        } else {
            return -1
        }
        
        return b
    }
    
    public func output(state: Int) -> V? {
        if state < 0 {
            return nil
        }
        let n = base[state]
        if state == check[state] && n < 0 {
            return v[-n - 1]
        }
        return nil
    }
    
    public struct Searcher : IteratorProtocol {
        public struct Result {
            /// the start pos of the key
            public let begin: Int
            /// the length of the key
            public let length: Int
            /// the index of key in the dictionary
            public let index: Int
            /// the corresponding value of the key
            public let value: V?
        }
        
        private var begin: Int
        private var length = 0
        private var index = 0
        private let chars: [Character]
        /// the position of the last node
        private var last: Int
        /// the ?? of the last character
        private var i: Int
        /// the length of the chars
        private let charsLength: Int
        
        private unowned let trie: DoubleArrayTrie
        
        public init(offset: Int, key: String, trie: DoubleArrayTrie) {
            self.chars = Array(key)
            i = offset
            last = trie.base[0]
            charsLength = chars.count
            begin = charsLength == 0 ? -1 : offset
            self.trie = trie
        }
        
        public mutating func next() -> Result? {
            var b = last
            var n = 0
            var p = 0
            
            while true {
                if i == charsLength {
                    begin += 1
                    if begin == charsLength {
                        break
                    }
                    i = begin
                    b = trie.base[0]
                }
                p = b + chars[i].codePoint + 1 // status transition p = base[chars[i-1]] + chars[i] + 1
                if b == trie.check[p] { // base[chars[i - 1]] == check[base[chars[i - 1]] + char[i] + 1]
                    b = trie.base[p] // transition success
                } else {
                    i = begin // transition failure, moves begin forwards by one, restart, status reset
                    begin += 1
                    if begin == charsLength {
                        break
                    }
                    b = trie.base[0]
                    continue
                }
                p = b
                n = trie.base[p]
                if b == trie.check[p] && n < 0 { // base[p] == check[p] && base[p] < 0, found a word
                    length = i - begin + 1
                    index = -n - 1
                    last = b
                    i += 1
                    return Result(begin: begin, length: length, index: index, value: trie.v[index])
                }
                
                i += 1
            }
            
            return nil
        }
    }
    
    public func searcher(text: String, offset: Int = 0) -> Searcher {
        return Searcher(offset: offset, key: text, trie: self)
    }

    public struct LongestSearcher : IteratorProtocol {
        public struct Result {
            /// the start pos of the key
            public let begin: Int
            /// the length of the key
            public let length: Int
            /// the index of key in the dictionary
            public let index: Int
            /// the corresponding value of the key
            public let value: V?
        }
        
        private var begin: Int
        private var index = 0
        private let chars: [Character]
        /// the offset of the last character
        private var i: Int
        /// the length of the chars
        private let charsLength: Int
        
        private unowned let trie: DoubleArrayTrie
        
        public init(offset: Int, key: String, trie: DoubleArrayTrie) {
            self.chars = Array(key)
            i = offset
            charsLength = chars.count
            begin = offset
            self.trie = trie
        }
        
        public mutating func next() -> Result? {
            var value: V?
            begin = i
            var b = trie.base[0]
            var n = 0
            var p = 0
            var length = 0
            
            while true {
                if i >= charsLength {
                    return value.map { Result(begin: begin, length: length, index: index, value: $0) }
                }
                p = b + chars[i].codePoint + 1 // state transfer p = base[chars[i - 1]] + chars[i] + 1
                if b == trie.check[p] { //base[chars[i - 1]] == check[base[chars[i - 1]] + chars[i] + 1]
                    b = trie.base[p] // transfer success
                } else {
                    if begin == charsLength {
                        break
                    }
                    if let value = value {
                        i = begin + length // after output the word, resume scanning at the next position of the word
                        return Result(begin: begin, length: length, index: index, value: value)
                    }
                    
                    i = begin // transition failure, moves begin forwards by one, restart, state reset
                    begin += 1
                    b = trie.base[0]
                }
                p = b
                n = trie.base[p]
                if b == trie.check[p] && n < 0 { // base[p] == check[p] && base[p] < 0, found a word
                    length = i - begin + 1
                    index = -n - 1
                    value = trie.v[index]
                }
                
                i += 1
            }
            
            return nil
        }
    }
    
    public func parse<H>(text: String, processor: H) where V == H.V, H : IHit {
        var searcher = self.searcher(text: text)
        while let result = searcher.next() {
            processor.hit(begin: result.begin, end: result.begin + result.length, value: result.value)
        }
    }
    
    public func parse(text: String, processor: (Searcher.Result) -> Void) {
        var searcher = self.searcher(text: text)
        while let result = searcher.next() {
            processor(result)
        }
    }
    
    public func longestSearcher(text: String, offset: Int = 0) -> LongestSearcher {
        return LongestSearcher(offset: offset, key: text, trie: self)
    }
    
    public func parse<H>(longestText text: String, processor: H) where V == H.V, H : IHit {
        var searcher = longestSearcher(text: text)
        while let result = searcher.next() {
            processor.hit(begin: result.begin, end: result.begin + result.length, value: result.value)
        }
    }
    
    public func parse(longestText text: String, processor: (LongestSearcher.Result) -> Void) {
        var searcher = longestSearcher(text: text)
        while let result = searcher.next() {
            processor(result)
        }
    }
    
    func transition(current: Int, c: Character) -> Int? {
        var b = base[current]
        var p = 0
        
        p = b + c.codePoint + 1
        if b == check[p] {
            b = base[p]
        } else {
            return nil
        }
        
        p = b
        return p
    }
    
    private func shrink() {
        base = base[..<size] + Array(repeating: 0, count: Character.size)
        check = check[..<size] + Array(repeating: 0, count: Character.size)
    }
}

extension DoubleArrayTrie {
    public func serializedData() throws -> Data {
        let persistent = AhoCorasickDoubleArrayTriePst.with {
            $0.base = base.map { Int64($0) }
            $0.check = check.map { Int64($0) }
        }
        return try persistent.serializedData()
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(contentsOf: base)
        try container.encode(contentsOf: check)
    }
}

extension String {
    func range(_ range: Range<Int>) -> Range<String.Index> {
        return index(startIndex, offsetBy: range.startIndex)..<index(startIndex, offsetBy: range.endIndex)
    }
}
