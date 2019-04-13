//
//  Trie.swift
//  DnA
//
//  Created by Resonance on 26/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

/// based on Aho-Corasick
public class Trie {
    private var trieConfig: TrieConfig
    private var rootState: State
    
    private var failureStatesConstructed = false
    
    public var removedOverlaps: Trie {
        trieConfig.allowsOverlaps = false
        return self
    }
    
    public var remainsLongest: Trie {
        trieConfig.remainsLongest = true
        return self
    }
    
    public init(trieConfig: TrieConfig = TrieConfig()) {
        self.trieConfig = trieConfig
        rootState = State()
    }
    
    public convenience init<S>(keywords: S) where S : Sequence, S.Element == String {
        self.init()
        add(allKeywords: keywords)
    }
    
    public func add(keyword: String) {
        if keyword.isEmpty {
            return
        }
        let currentState = keyword.reduce(into: rootState) {
            $0 = $0.addState(character: $1.codePoint)
        }
        currentState.addEmit(keyword: keyword)
    }
    
    public func add<S>(allKeywords: S) where S : Sequence, S.Element == String {
        allKeywords.forEach(add(keyword:))
    }
    
    /// a tokenizer for longest words
    /// - parameter text: text to be tokenized
    public func tokenize(text: String) -> [Token] {
        var tokens = [Token]()
        
        let collectedEmits = parse(text: text)
        let intervalTree = IntervalTree(intervals: collectedEmits)
        intervalTree.removeOverlaps(intervals: collectedEmits)
        
        var lastCollectedPosition = -1
        for emit in collectedEmits {
            if emit.start - lastCollectedPosition > 1 {
                tokens.append(createFragment(emit: emit, text: text, lastCollectedPosition: lastCollectedPosition))
            }
            tokens.append(createMatch(emit: emit, text: text))
            lastCollectedPosition = emit.end
        }
        if text.count - lastCollectedPosition > 1 {
            tokens.append(createFragment(emit: nil, text: text, lastCollectedPosition: lastCollectedPosition))
        }
        
        return tokens
    }
    
    private func createFragment(emit: Emit?, text: String, lastCollectedPosition: Int) -> Token {
        let startIdx = lastCollectedPosition + 1
        let endIdx = emit?.start ?? text.count
        
        return FragmentToken(fragment: String(text[text.index(text.startIndex, offsetBy: startIdx)..<text.index(text.startIndex, offsetBy: endIdx)]))
    }
    
    private func createMatch(emit: Emit, text: String) -> Token {
        return MatchToken(fragment: String(text[text.index(text.startIndex, offsetBy: emit.start)...text.index(text.startIndex, offsetBy: emit.end)]), emit: emit)
    }
    
    /// match keywords
    /// - parameter text: text to be matched
    /// - returns: keywords matched
    public func parse(text: String) -> [Emit] {
        checkForConstructedFailureStates()
        
        var position = 0
        var collectedEmits = [Emit]()
        text.reduce(into: rootState as State?) {
            $0 = $0?.getState(character: $1)
            collectedEmits.storeEmits(at: position, currentState: $0)
            position += 1
        }
        
        if !trieConfig.allowsOverlaps {
            let intervalTree = IntervalTree(intervals: collectedEmits)
            intervalTree.removeOverlaps(intervals: collectedEmits)
        }
        
        if trieConfig.remainsLongest {
            collectedEmits.remainLongest()
        }
        
        return collectedEmits
    }
    
    private func checkForConstructedFailureStates() {
        if !failureStatesConstructed {
            constructFailureStates()
        }
    }
    
    private func constructFailureStates() {
        var queue = Queue<State>()
        
        // first, set rootState as the failure of nodes with depth of 1
        for depthOneState in rootState.states {
            depthOneState.failure = rootState
            queue.enqueue(depthOneState)
        }
        failureStatesConstructed = true
        
        // second, build failure states for nodes with depth > 1, this is a bfs
        while let currentState = queue.dequeue() {
            for transition in currentState.transitions {
                let targetState = currentState.nextState(character: transition, ignoreRootState: false)
                targetState.map { queue.enqueue($0) }
                
                var traceFailureState = currentState.failure
                while traceFailureState?.nextState(character: transition, ignoreRootState: false) == nil {
                    traceFailureState = traceFailureState?.failure
                }
                
                if let newFailureState = traceFailureState?.nextState(character: transition, ignoreRootState: false) {
                    targetState?.failure = newFailureState
                    targetState?.addEmit(keywords: newFailureState.emit)
                }
            }
        }
    }
    
    /// if the input text contains any keyword
    /// - parameter text: text to be matched
    /// - returns: True if `text` contains keyword(s)
    public func hasKeyword(text: String) -> Bool {
        checkForConstructedFailureStates()
        
        var currentState: State? = rootState
        for c in text {
            let nextState = currentState?.getState(character: c)
            if let nextState = nextState, nextState !== currentState && !nextState.emit.isEmpty {
                return true
            }
            currentState = nextState
        }
        return false
    }
}

public struct TrieConfig {
    public var allowsOverlaps = true
    public var remainsLongest = false
    
    public init() {}
}

private extension State {
    /// transition to the next state
    /// - parameter character: character to input
    /// - returns: the transitioned state
    func getState(character: Character) -> State? {
        let character = character.codePoint
        var currentState: State? = self
        var newCurrentState = currentState?.nextState(character: character, ignoreRootState: false)
        while newCurrentState == nil {
            currentState = currentState?.failure
            newCurrentState = currentState?.nextState(character: character, ignoreRootState: false)
        }
        return newCurrentState
    }
}

private extension RangeReplaceableCollection where Element == Emit {
    /// persist matching results
    /// - parameter position: the current position, i.e. the end position of the matched keywords + 1
    /// - parameter currentState: current state
    mutating func storeEmits(at position: Int, currentState: State?) {
        currentState?.emit.forEach { emit in
//            append(Emit(range: position...position + emit.count, keyword: emit))
            append(Emit(range: position - emit.count + 1...position, keyword: emit))
        }
    }
    
    /// only keep the longest words
    mutating func remainLongest() {
        if count < 2 {
            return
        }
        let emitMapStart: [Int : Emit] = reduce(into: [:]) { map, emit in
            let pre = map[emit.start]
            if pre.map({ $0.size < emit.size }) ?? true {
                map[emit.start] = emit
            }
        }
        let sortedEmitMapStartValues = emitMapStart.sorted { $0.key < $1.key }.map { $0.value }
        if emitMapStart.count < 2 {
            removeAll(keepingCapacity: false)
            reserveCapacity(emitMapStart.count)
            append(contentsOf: sortedEmitMapStartValues)
            return
        }
        let emitMapEnd: [Int : Emit] = sortedEmitMapStartValues.reduce(into: [:]) { map, emit in
            let pre = map[emit.end]
            if pre.map({ $0.size < emit.size }) ?? true {
                map[emit.end] = emit
            }
        }
        
        let sortedEmitMapEndValues = emitMapEnd.sorted { $0.key < $1.key }.map { $0.value }
        removeAll(keepingCapacity: false)
        reserveCapacity(emitMapEnd.count)
        append(contentsOf: sortedEmitMapEndValues)
    }
}
