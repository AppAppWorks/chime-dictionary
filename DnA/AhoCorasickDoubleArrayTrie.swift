//
//  AhoCorasickDoubleArrayTrie.swift
//  Pinyin
//
//  Created by Resonance on 17/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import SwiftProtobuf

public protocol IHit {
    associatedtype V
    func hit(begin: Int, end: Int, value: V?)
}

public protocol IHitFull {
    associatedtype V
    func hit(begin: Int, end: Int, value: V?, index: Int)
}

public struct AhoCorasickDoubleArrayTrie<V> where V : Value {
    public struct Hit {
        public let begin: Int
        public let end: Int
        public let value: V.V?
    }
    
    public class State : CustomStringConvertible {
        /// the length of mode list, i.e. the length of this state
        let depth: Int
        /// the fail function, jumps to this state if no match is found
        private(set) var failure: State?
        private var emits: Set<Int>?
        /// as long as this state is accessible, the pattern list will be stored
        var emit: [Int] {
            if let emit = _emit {
                return emit
            } else if let emits = emits {
                let emit = emits.lazy.sorted().map { -$0 }
                _emit = emit
                return emit
            } else {
                return []
            }
        }
        private var _emit: [Int]?
        /// goto list, aka transition function, jumps to the next state based on the next char of the string
        var success: [(Int, State)] {
            if let success = _success {
                return success
            } else {
                let success = successDict.sorted { $0.key < $1.key }
                _success = success
                return success
            }
        }
        private var _success: [(Int, State)]?
        private var successDict = [Int : State]()
        /// the lowerbound of ??
        var index = 0
        
        /// whether it's the end state
        public var isAcceptable: Bool {
            return depth > 0 && emits != nil
        }
        
        public required init(depth: Int = 0) {
            self.depth = depth
        }
        
        public func addEmit(keyword: Int) {
            if emits == nil {
                emits = []
            }
            emits?.insert(-keyword)
        }
        
        public func addEmit<S>(keywords: S) where S : Sequence, S.Element == Int {
            keywords.forEach(addEmit(keyword:))
        }
        
        public var getLargestValueId: Int? {
            return emits?.first
        }
        
        public func set(failure: State, fail: inout [Int]) {
            self.failure = failure
            fail[index] = failure.index
        }
        
        /// transitions to the next state
        public func nextState(character: Int, ignoreRootState: Bool) -> State? {
            var nextState = successDict[character]
            if !ignoreRootState && nextState == nil && depth == 0 {
                nextState = self
            }
            return nextState
        }
        
        public func addState(character: Int) -> State {
            return nextState(character: character, ignoreRootState: true)
                ?? {
                    _success = nil
                    let nextState = State(depth: depth + 1)
                    successDict[character] = nextState
                    return nextState
            }()
        }
        
        var states: [State] {
            return success.map { $0.1 }
        }
        
        var transitions: [Int] {
            return success.map { $0.0 }
        }
        
        public var description: String {
            return "depth: \(depth) failure: \(failure) emits: \(emits) success: \(success) index: \(index)"
        }
    }
    
    private struct Builder {
        /// root node, transient
        private var rootState = State()
        /// transient
        private var used = [Bool]()
        /// size allocated in memory
        private var allocSize = 0
        /// controls growth rate
        private var progress = 0
        /// search for the next insertion will start here
        private var nextCheckPos = 0
        private var keySize = 0
        
        mutating func build<S>(map: S, trie: inout AhoCorasickDoubleArrayTrie) where S : Sequence, S.Element == (String, V.V) {
            trie.v = map.map { $0.1 }
            trie.l = [Int](repeating: 0, count: trie.v.count)
            let keys = map.map { $0.0 }
            add(allKeywords: keys, trie: &trie)
//            // 在二分trie树的基础上构建双数组trie树
            buildDoubleArrayTrie(keys: keys, trie: &trie)
            used = []
//            // 构建failure表并且合并output表
            constructFailureStates(trie: &trie)
            rootState = State()
            loseWeight(trie: &trie)
        }
        
        private func add(keyword: String, index: Int, trie: inout AhoCorasickDoubleArrayTrie) {
            var currentState = rootState
            for character in keyword {
                currentState = currentState.addState(character: character.codePoint)
            }
            currentState.addEmit(keyword: index)
            trie.l[index] = keyword.count
        }
        
        private func add<S>(allKeywords: S, trie: inout AhoCorasickDoubleArrayTrie) where S : Sequence, S.Element == String {
            allKeywords.enumerated().forEach { add(keyword: $1, index: $0, trie: &trie) }
        }
        
        private func constructFailureStates(trie: inout AhoCorasickDoubleArrayTrie) {
            trie.fail = [Int](repeating: 0, count: trie._size + 1)
            trie.fail[1] = trie.base[0]
            trie.output = Array(repeating: nil, count: trie._size + 1)
            
            var queue = Queue<State>()
            
//            first, set a node with depth of 1 as the root node
            for depthOneState in rootState.states {
                depthOneState.set(failure: rootState, fail: &trie.fail)
                queue.enqueue(depthOneState)
                constructOutput(targetState: depthOneState, trie: &trie)
            }
            
//            second, build failure states for nodes with depth > 1, this is a bfs
            while let currentState = queue.dequeue() {
                for transition in currentState.transitions {
                    let targetState = currentState.nextState(character: transition, ignoreRootState: false)
                    queue.enqueue(targetState!)
                    
                    var traceFailureState = currentState.failure
                    while traceFailureState?.nextState(character: transition, ignoreRootState: false) == nil {
                        traceFailureState = traceFailureState?.failure
                    }
                    let newFailureState = traceFailureState?.nextState(character: transition, ignoreRootState: false)
                    targetState?.set(failure: newFailureState!, fail: &trie.fail)
                    targetState?.addEmit(keywords: newFailureState!.emit)
                    constructOutput(targetState: targetState!, trie: &trie)
                }
            }
        }
        
        private func constructOutput(targetState: State, trie: inout AhoCorasickDoubleArrayTrie) {
            let emit = targetState.emit
            if emit.isEmpty {
                return
            }
            trie.output[targetState.index] = Array(emit)
        }
        
        private mutating func buildDoubleArrayTrie<C>(keys: C, trie: inout AhoCorasickDoubleArrayTrie) where C : Collection, C.Element : StringProtocol {
            progress = 0
            keySize = keys.count
            resize(newSize: 65536 * 32, trie: &trie)
            
            trie.base[0] = 1
            nextCheckPos = 0
            
            let rootNode = rootState
            let (_, siblings) = trie.fetch(parent: rootNode)
            insert(siblings: siblings, trie: &trie)
        }
        
        private mutating func resize(newSize: Int, trie: inout AhoCorasickDoubleArrayTrie) {
            if allocSize > 0 {
                trie.base.reserveCapacity(newSize)
                trie.check.reserveCapacity(newSize)
                used.reserveCapacity(newSize)
                
                for _ in allocSize..<newSize {
                    trie.base.append(0)
                    trie.check.append(0)
                    used.append(false)
                }
            } else {
                trie.base = Array(repeating: 0, count: newSize)
                trie.check = Array(repeating: 0, count: newSize)
                used = Array(repeating: false, count: newSize)
            }
            
            allocSize = newSize
        }
        
        @discardableResult
//        private mutating func insert<BC>(siblings: BC, trie: inout AhoCorasickDoubleArrayTrie) -> Int where BC : BidirectionalCollection, BC.Element == (Int, State), BC.Index == Int {
        private mutating func insert(siblings: [(Int, State)], trie: inout AhoCorasickDoubleArrayTrie) -> Int {
            let firstSiblingPos = siblings[0].0
            let lastSiblingPos = siblings.last!.0
            
            var begin = 0
            var pos = max(firstSiblingPos + 1, nextCheckPos) - 1
            var nonZeroSum = 0
            var first = 0
            
            if allocSize <= pos {
                resize(newSize: pos + 1, trie: &trie)
            }
            
            outer: while true {
                pos += 1

                if allocSize <= pos {
                    resize(newSize: pos + 1, trie: &trie)
                }

                if trie.check[pos] != 0 {
                    nonZeroSum += 1
                    continue
                } else if first == 0 {
                    nextCheckPos = pos
                    first = 1
                }

                begin = pos - firstSiblingPos // the distance between the current position with the first sibling node
                if allocSize <= (begin + lastSiblingPos) {
                    // prevent division by zero
                    let l = (1.05 > Double(keySize) / Double(progress + 1)) ? 1.05 : Double(keySize) / Double(progress + 1)
                    resize(newSize: Int(Double(allocSize) * l), trie: &trie)
                }

                if used[begin] {
                    continue
                }

                for sibling in siblings {
                    if trie.check[begin + sibling.0] != 0 {
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
            if Double(nonZeroSum) / Double(pos - nextCheckPos + 1) >= 0.95 {
                nextCheckPos = pos
            }
            used[begin] = true
            
            trie._size = (trie._size > begin + lastSiblingPos + 1) ? trie._size : begin + lastSiblingPos + 1
            
            for (key, _) in siblings {
                trie.check[begin + key] = begin
            }
            
            for sibling in siblings {
                let (newSize, newSiblings) = trie.fetch(parent: sibling.1)
                
                if newSize == 0 { // if a word ends without being a prefix of any other word, i.e. a leaf node
                    trie.base[begin + sibling.0] = -sibling.1.getLargestValueId! - 1
                    progress += 1
                } else {
                    let h = insert(siblings: newSiblings, trie: &trie) // dfs
                    trie.base[begin + sibling.0] = h
                }
                sibling.1.index = begin + sibling.0
            }
            return begin
        }
        
        private func loseWeight(trie: inout AhoCorasickDoubleArrayTrie) {
            trie.base = Array(trie.base[..<trie._size]) + Array(repeating: 0, count: Character.size)
            trie.check = Array(trie.check[..<trie._size]) + Array(repeating: 0, count: Character.size)
        }
    }
    
    var check = [Int]()
    var base = [Int]()
    /// fail list
    var fail = [Int]()
    /// output list
    var output = [[Int]?]()
    /// stores value
    public var v = [V.V?]()
    /// length of each key
    var l = [Int]()
    /// the size of base and check
    var _size = 0
    
    var size: Int {
        return v.count
    }
    
    public subscript(key: String) -> V.V? {
        get {
            return exactMatchSearch(key: key).flatMap { v[$0] }
        }
        set {
            exactMatchSearch(key: key).map { v[$0] = newValue }
        }
    }
    
    public subscript(index: Int) -> V.V? {
        return v[index]
    }
    
    public init() {
        
    }
    
    /// parses text
    public func parse(text: String) -> [Hit] {
        var currentState = 0
        var collectedEmits = [Hit]()
        for (position, c) in text.enumerated() {
            currentState = getState(from: currentState, character: c)
            store(at: position + 1, currentState: currentState, collectedEmits: &collectedEmits)
        }
        return collectedEmits
    }
    
    public func parse<I>(text: String, processor: I) where V.V == I.V, I : IHit {
        parse(text: text, processor: processor.hit(begin:end:value:))
    }
    
    public func parse(text: String, processor: (_ begin: Int, _ end: Int, _ value: V.V?) -> Void) {
        var position = 1
        var currentState = 0
        
        for c in text {
            currentState = getState(from: currentState, character: c)
            if let hitArray = output[currentState] {
                for hit in hitArray {
                    processor(position - l[hit], position, v[hit])
                }
            }
            position += 1
        }
    }
    
    /// transfers the state, supports transfer of failure
    private func getState(from currentState: Int, character: Character) -> Int {
        var currentState = currentState
        var newCurrentState = transitionWithRoot(at: currentState, with: character)  // transitions based on success first
        while (newCurrentState == -1) // if transition failed, transitions based on failure
        {
            currentState = fail[currentState];
            newCurrentState = transitionWithRoot(at: currentState, with: character);
        }
        return newCurrentState;
    }
    
    func transition(at current: Int, with c: Character) -> Int {
        var b = current
        var p = 0
        
        p = b + c.codePoint + 1
        if b == check[p] {
            b = base[p]
        } else {
            return -1
        }
        
        p = b
        return p
    }
    
    func transitionWithRoot(at nodePos: Int, with c: Character) -> Int {
        let b = base[nodePos]
        let p = b + c.codePoint + 1
        if b != check[p] {
            return nodePos == 0 ? 0 : -1
        }
        
        return p
    }
    
    /// store the output
    private func store<C>(at position: Int, currentState: Int, collectedEmits: inout C) where C : RangeReplaceableCollection, C.Element == Hit {
        if let hitArray = output[currentState] {
            for hit in hitArray {
                collectedEmits.append(Hit(begin: position - l[hit], end: position, value: v[hit]))
            }
        }
    }
    
    public func exactMatchSearch(key: String) -> Int? {
        return exactMatchSearch(key: key, pos: 0, len: 0, nodePos: 0)
    }
    
    private func exactMatchSearch(key: String, pos: Int, len: Int, nodePos: Int) -> Int? {
        let len = len <= 0 ? key.count : len
        let nodePos = max(0, nodePos)
        
        var result: Int?
        var i = pos
        let strIdx = key.index(key.startIndex, offsetBy: pos)
        
        var b = base[nodePos]
        var p = 0
        
        for char in key[strIdx...] {
            p = b + char.codePoint + 1
            if b == check[p] {
                b = base[p]
            } else {
                return result
            }
            i += 1
            if i == len {
                break
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
        var i = range.startIndex
        let startStrIdx = key.index(key.startIndex, offsetBy: Int(i))
        let len = range.endIndex == 0 ? UInt(key.count) : range.endIndex
        
        let nodePos = Int(nodePos)
        var result = [Int]()
        
        var b = base[nodePos]
        var n = 0
        var p = 0
        
        for char in key[startStrIdx...] {
            p = b + char.codePoint + 1
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
            i += 1
            if i == len {
                break
            }
        }
        
        return result
    }
    
    public func commonPrefixSearchWithValue(key: String, begin: UInt) -> LinkedList<(String, V.V?)> {
        let begin = Int(begin)
        let beginStrIdx = key.index(key.startIndex, offsetBy: begin)
        var endStrIdx = beginStrIdx
        let len = key.count
        let result = LinkedList<(String, V.V?)>()
        var b = base[0]
        var n = 0
        var p = 0
        var growingTerm = ""
        
        for _ in begin..<len {
            let char = key[endStrIdx]
            key.formIndex(after: &endStrIdx)
            
            p = b
            n = base[p]
            if b == check[p] && n < 0 {
                result.append((growingTerm, v[-n - 1]))
            }
            
            growingTerm.append(char)
            
            p = b + char.codePoint + 1
            if b == check[p] {
                b = base[p]
            } else {
                return result
            }
        }
        
        p = b
        n = base[p]
        
        if b == check[p] && n < 0 {
            result.append((String(key[beginStrIdx..<endStrIdx]), v[-n - 1]))
        }
        
        return result
    }
    
    public mutating func build<S>(map: S) where S : Sequence, S.Element == (String, V.V) {
        var builder = Builder()
        builder.build(map: map, trie: &self)
    }
    
    // get a directly linked child node
    private func fetch(parent: State) -> (Int, [(Int, State)]) {
        var siblings = [(Int, State)]()
        
        if parent.isAcceptable {
            let fakeNode = State(depth: -(parent.depth + 1))
            fakeNode.addEmit(keyword: parent.getLargestValueId!)
            siblings.append((0, fakeNode))
        }
        for (character, state) in parent.success {
            siblings.append((character + 1, state))
        }
        
        return (siblings.count, siblings)
    }
}

extension Character {
    var codePoint: Int {
        return Int(unicodeScalars.first!.value)
    }
}
