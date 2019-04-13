//
//  Node.swift
//  Pinyin
//
//  Created by Resonance on 19/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import Foundation

public class Node<V> : BaseNode<V> where V : Codable {
    init(c: Character, status: Status?, value: V?) {
        super.init()
        self.c = c
        self.status = status
        self.value = value
    }
    
    required init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }
    
    public override func add(child node: BaseNode<V>) -> Bool {
        var add = false
        var children = self.children ?? []
        switch children.binarySearch(item: node) {
        case .found(let index):
            let target = children[index]
            switch node.status {
            case .some(.undefined) where target?.status != .notWord:
                target?.status = .notWord
                target?.value = nil
                add = true
            case .some(.notWord) where target?.status == .wordEnd:
                target?.status = .wordMiddle
            case .some(.wordEnd):
                if target?.status != .wordEnd {
                    target?.status = .wordMiddle
                }
                if target?.value == nil {
                    add = true
                }
                target?.value = node.value
            default:
                break
            }
        case .notFound(let index):
            let insert = index - 1
            children.insert(node, at: insert)
            self.children = children
            add = true
        }
        return add
    }
    
    public override func child(at c: Character) -> BaseNode<V>? {
        guard let children = children else { return nil }
        guard case let .found(index) = children.binarySearch(item: Node(c: c, status: nil, value: nil)) else {
            return nil
        }
        return children[index]
    }
}

enum BinarySearchResult<Index> {
    case found(index: Index)
    case notFound(index: Index)
}

extension BidirectionalCollection where Element : Comparable {
    func binarySearch(item: Element) -> BinarySearchResult<Index> {
        if first == item {
            return .found(index: startIndex)
        }
        
        var lowerIndex = 0
        var upperIndex = count - 1
        
        while true {
            let offset = (lowerIndex + upperIndex) >> 1            
            if lowerIndex >= upperIndex {
                return .notFound(index: index(startIndex, offsetBy: lowerIndex + 1))
            }
            let currentIndex = index(startIndex, offsetBy: offset)
            if self[currentIndex] == item {
                return .found(index: currentIndex)
            } else {
                if self[currentIndex] > item {
                    upperIndex = offset - 1
                } else {
                    lowerIndex = offset + 1
                }
            }
        }
    }
}

extension Optional : Comparable where Wrapped : Comparable {
    public static func < (lhs: Optional<Wrapped>, rhs: Optional<Wrapped>) -> Bool {
        guard case let .some(r) = rhs else {
            return false
        }
        guard case let .some(l) = lhs else {
            return true
        }
        return l < r
    }
}
