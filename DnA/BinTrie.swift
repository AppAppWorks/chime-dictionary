//
//  BinTrie.swift
//  Pinyin
//
//  Created by Resonance on 19/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

public class BinTrie<V> : BaseNode<V>, ITrie where V : Codable {
    public typealias TrieEntries = Set<TrieEntry>
    
    public private(set) var size: Int
    
    override var c: Character {
        // there's no char on the root node
        didSet {
            if c != Character(" ") {
                c = Character(" ")
            }
        }
    }
    
    public var v: [V?] {
        return entrySet.map { $0.value }
    }
    
    public var keys: [String] {
        return entrySet.map { $0.key }
    }
    
    public var entrySet: [TrieEntry] {
        var entrySet = TrieEntries()
        children?.forEach {
            if $0 == nil {
                return
            }
            var string = ""
            $0?.walk(string: &string, entrySet: &entrySet)
        }
        return entrySet.sorted()
    }
    
    public override init() {
        size = 0
        super.init()
        children = Array(repeating: nil, count: Character.size + 1)
        status = .notWord
    }
    
    public convenience init<S>(map: S) where S : Sequence, S.Element == (String, V) {
        self.init()
        for (key, value) in map {
            self[key] = value
        }
    }
    
    required init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        size = try container.decode(Int.self)
        try super.init(from: decoder)
    }
    
    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.unkeyedContainer()
        try container.encode(size)
    }
    
    public subscript(key: String) -> V? {
        get {
            return get(key: key)
        }
        set {
            if let value = newValue {
                put(key: key, value: value)
            } else {
                remove(key: key)
            }
        }
    }
    
    func put(key: String, value: V) {
        if key.isEmpty {
            return
        }
        var branch: BaseNode? = self
        for c in key.dropLast() {
            // continue until the last character
            branch?.add(child: Node(c: c, status: .notWord, value: nil))
            branch = branch?.child(at: c)
        }
        // status = wordEnd for the last character
        if branch?.add(child: Node(c: key.last!, status: .wordEnd, value: value)) == true {
            size += 1
        }
    }
    
    func remove(key: String) {
        var branch: BaseNode? = self
        for c in key.dropLast() {
            if branch == nil {
                return
            }
            branch = branch?.child(at: c)
        }
        if let branch = branch,
            // set the last character as undefined
            branch.add(child: Node(c: key.last!, status: .undefined, value: value)) {
            size -= 1
        }
    }
    
    public func contains(key: String) -> Bool {
        var branch: BaseNode? = self
        for c in key {
            if branch == nil {
                return false
            }
            branch = branch?.child(at: c)
        }
        return branch?.status == .wordEnd || branch?.status == .wordMiddle
    }
    
    func get(key: String) -> V? {
        var branch: BaseNode? = self
        for c in key {
            if branch == nil {
                return nil
            }
            branch = branch?.child(at: c)
        }
        
        guard let aBranch = branch else {
            return nil
        }
        // this ensures only nodes that form a whole word can be returned
        if !(aBranch.status == .wordEnd || aBranch.status == .wordMiddle) {
            return nil
        }
        return aBranch.value
    }
    
    public func prefixSearch(key: String) -> TrieEntries {
        var entrySet = TrieEntries()
        var string = String(key.dropLast())
        var branch: BaseNode? = self
        for c in key {
            if branch == nil {
                return entrySet
            }
            branch = branch?.child(at: c)
        }
        if branch == nil {
            return entrySet
        }
        branch?.walk(string: &string, entrySet: &entrySet)
        return entrySet
    }
    
    public func commonPrefixSearchWithValue(key: String, begin: Int = 0) -> LinkedList<TrieEntry> {
        let result = LinkedList<TrieEntry>()
        var string = ""
        var branch: BaseNode? = self
        for c in key {
            branch = branch?.child(at: c)
            guard let branch = branch,
                branch.status != .undefined else {
                return result
            }
            string.append(c)
            if branch.status == .wordMiddle || branch.status == .wordEnd {
                result.append(TrieEntry(key: string, value: branch.value))
            }
        }
        return result
    }
    
    public override func add(child node: BaseNode<V>) -> Bool {
        let c = node.c
        guard let target = child(at: c) else {
            children?[c.codePoint] = node
            return true
        }
        var add = false
        switch node.status {
        case .some(.undefined) where target.status != .notWord:
            target.status = .notWord
            add = true
        case .some(.notWord) where target.status == .wordEnd:
            target.status = .wordMiddle
        case .some(.wordEnd):
            if target.status == .notWord {
                target.status = .wordMiddle
            }
            add = target.value == nil
            target.value = node.value
        default:
            break
        }
        return add
    }
    
    public override func child(at c: Character) -> BaseNode<V>? {
        return children?[c.codePoint]
    }
    
    public func build<S>(keyValuePairs: S) -> Int where S : Sequence, S.Element == (String, V) {
        keyValuePairs.forEach { self[$0] = $1 }
        return 0
    }
    
    public func parse<H>(longestText text: String, processor: H) where H : IHit, H.V == V {
        let endIndex = text.endIndex
        var skipIndex: String.Index?
        
        for i in text.indices {
            if let skip = skipIndex {
                if i < skip {
                    continue
                } else {
                    skipIndex = nil
                }
            }
            
            let c = text[i]
            guard var state = transition(path: c) else { continue }
            var end = text.index(after: i)
            var value = state.value
            for to in text[end..<endIndex].indices {
                guard let newState = state.transition(path: text[to]) else { break }
                state = newState
                if let newValue = state.value {
                    value = newValue
                    end = text.index(after: to)
                }
            }
            if let value = value {
                processor.hit(begin: i.encodedOffset, end: end.encodedOffset, value: value)
                skipIndex = text.index(before: end)
            }
        }
    }
    
    public func parse(text: String, processor: (_ begin: Int, _ end: Int, _ value: V?) -> Void) {
        let chars = Array(text)
        let length = chars.count
        var begin = 0
        var state: BaseNode? = self
        var i = 0
        
        while i < length {
            state = state?.transition(path: chars[i])
            if let state = state  {
                if let value = state.value {
                    processor(begin, i + 1, value)
                }
            } else {
                i = begin
                begin += 1
                state = self
            }
            
            i += 1
        }

    }
    
    public func parse<H>(text: String, processor: H) where H : IHit, H.V == V {
        parse(text: text, processor: processor.hit(begin:end:value:))
    }
}
