//
//  BaseNode.swift
//  Pinyin
//
//  Created by Resonance on 19/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

public class BaseNode<V> : Codable where V : Codable {
    public enum Status : Int, Codable {
        case undefined = 0
        case notWord = 1
        case wordMiddle = 2
        case wordEnd = 3
        
        public static var values: [Status] {
            return [undefined, notWord, wordMiddle, wordEnd]
        }
    }
    
    public struct TrieEntry : Comparable, Hashable {
        public let key: String
        public let value: V?
        
        public static func == (lhs: BaseNode<V>.TrieEntry, rhs: BaseNode<V>.TrieEntry) -> Bool {
            return lhs.key == rhs.key
        }
        
        public static func < (lhs: TrieEntry, rhs: TrieEntry) -> Bool {
            return lhs.key < rhs.key
        }
        
        public func hash(into hasher: inout Hasher) {
            hasher.combine(key)
        }
    }
    
    var children: [BaseNode?]?
    public internal(set) var status: Status?
    var c = Character(" ")
    public var value: V?

    public func transition(path: String, begin: Int) -> BaseNode? {
        var cur: BaseNode? = self
        for c in path[path.index(path.startIndex, offsetBy: begin)...] {
            cur = cur?.child(at: c)
            if cur == nil || cur?.status == Status.undefined {
                return nil
            }
        }
        return cur
    }

    public func transition(path: Character) -> BaseNode? {
        let cur = child(at: path)
        if cur == nil || cur?.status == Status.undefined {
            return nil
        }
        return cur
    }

    public func add(child node: BaseNode) -> Bool {
        fatalError("uninplemented method!")
    }

    func has(child c: Character) -> Bool {
        return child(at: c) != nil
    }

    public func child(at c: Character) -> BaseNode? {
        fatalError("uninplemented method!")
    }

    func walk(string: inout String, entrySet: inout Set<TrieEntry>) {
        string.append(c)
        if status == .wordMiddle || status == .wordEnd {
            entrySet.insert(TrieEntry(key: string, value: value))
        }
        children?.forEach {
            guard let node = $0 else {
                return
            }
            var newString = string
            node.walk(string: &newString, entrySet: &entrySet)
        }
    }
}

extension BaseNode : Comparable {
    public static func < (lhs: BaseNode<V>, rhs: BaseNode<V>) -> Bool {
        return lhs.c < rhs.c
    }

    public static func == (lhs: BaseNode<V>, rhs: BaseNode<V>) -> Bool {
        return lhs.c == rhs.c
    }
}

extension BaseNode : CustomStringConvertible {
    public var description: String {
        if let children = children {
            return "BaseNode{children=\(children.count), status=\(status), c=\(c), value=\(value)}"
        } else {
            return "BaseNode{status=\(status), c=\(c), value=\(value)}"
        }
    }
}

extension Character : Codable {
    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        let string = try container.decode(String.self)
        if string.count != 1 {
            throw DecodingError.dataCorruptedError(in: container, debugDescription: "Multiple characters found when decoding a character")
        }
        guard let character = string.first else {
            throw DecodingError.dataCorruptedError(in: container, debugDescription: "Empty string found when decoding a Character")
        }
        self = character
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(String(self))
    }
}
