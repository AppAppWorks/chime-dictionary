//
//  SimpleDictionary.swift
//  Pinyin
//
//  Created by Resonance on 20/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

public protocol Filter {
    associatedtype V : Codable
    func remove(entry: BaseNode<V>.TrieEntry) -> Bool
}

public class SimpleDictionary<V> where V : Codable {
    typealias Element = (key: String, value: V)
    
    let trie = BinTrie<V>()
    
    public var entrySet: [BaseNode<V>.TrieEntry] {
        return trie.entrySet
    }
    
    public var keys: [String] {
        return entrySet.map { $0.key }
    }
    
    public var size: Int {
        return trie.size
    }
    
    public subscript(key: String) -> V? {
        get {
            return trie[key]
        }
        set {
            trie[key] = newValue
        }
    }
    
    public func load(path: String) throws {
        let rawlines = try String(contentsOfFile: path)
        let lines = rawlines.split(separator: "\n")
        for line in lines {
            if let entry = onGenerateEntry(line: line) {
                trie[entry.key] = entry.value
            }
        }
    }
    
    func onGenerateEntry<S>(line: S) -> Element? where S : StringProtocol {
        fatalError("unimplemented method")
    }
    
    public func combine(other: SimpleDictionary<V>) {
        for entry in other.trie.entrySet {
            if !trie.contains(key: entry.key) {
                trie[entry.key] = entry.value
            }
        }
    }
    
    public func remove<F>(filter: F) -> Int where F : Filter, F.V == V {
        let size = trie.size
        for entry in entrySet {
            if filter.remove(entry: entry) {
                trie[entry.key] = nil
            }
        }
        return size - trie.size
    }
}
