//
//  State.swift
//  DnA
//
//  Created by Resonance on 26/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

public class State {
    /// the length of mode list, i.e. the length of this state
    let depth: Int
    /// the fail function, jumps to this state if no match is found
    public var failure: State?
    /// as long as this state is accessible, the mode list will be stored
    private var emits: Set<String>?
    var emit: [String] {
        return emits?.sorted() ?? []
    }
    /// goto list, aka transition function, jumps to the next state based on the next char of the string
    var success = [Int : State]()
    public var states: [State] {
        return success.sorted { $0.key < $1.key }.map { $0.value }
    }
    public var transitions: [Int] {
        return success.keys.sorted()
    }
    /// the lowerbound of ??
    var index = 0
    
    /// whether it's the end state
    public var isAcceptable: Bool {
        return depth > 0 && emits != nil
    }
    
    public required init(depth: Int = 0) {
        self.depth = depth
    }
    
    public func addEmit(keyword: String) {
        if emits == nil {
            emits = []
        }
        emits?.insert(keyword)
    }
    
    public func addEmit<S>(keywords: S) where S : Sequence, S.Element == String {
        keywords.forEach(addEmit(keyword:))
    }
    
    public func set(failure: State, fail: inout [Int]) {
        self.failure = failure
        fail[index] = failure.index
    }
    
    /// transitions to the next state
    public func nextState(character: Int, ignoreRootState: Bool) -> State? {
        var nextState = success[character]
        if !ignoreRootState && nextState == nil && depth == 0 {
            nextState = self
        }
        return nextState
    }
    
    public func addState(character: Int) -> State {
        return nextState(character: character, ignoreRootState: true)
            ?? {
                let nextState = State(depth: depth + 1)
                success[character] = nextState
                return nextState
            }()
    }
}
