//
//  RedBlackTreeTests.swift
//  DnATests
//
//  Created by Resonance on 23/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import XCTest
import DnA

class RedBlackTreeTests : XCTestCase {
    var tree: RedBlackTree<String, String>!
    
    override func setUp() {
        tree = .init()
        
        tree["c"] = "3"
//        tree["d"] = "4"
        tree["a"] = "1"
        tree["e"] = "5"
        tree["b"] = "2"
    }
    
    override func tearDown() {
        tree = nil
    }
    
    func testIteration() {
        let a = Array(tree)
        assert(a == [("a", "1"), ("b", "2"), ("c", "3"), ("d", "4"), ("e", "5")])
    }
    
    func testPrefix() {
        print(tree[..."d"])
        print(tree[..<"d"])
        print(tree["d"...])
    }
    
    func testSpeed() {
        measure {
            let map = RedBlackTree<String, String>()
            
            let datUrl = URL(fileURLWithPath: "/Users/Resonance/Documents/HanLP/data/dictionary/CoreNatureDictionary.mini.txt")
            
            do {
                let lines = try String(contentsOf: datUrl).split(separator: "\n").map({ String($0) })
                for line in lines {
                    map[line] = line
                }
            } catch {
                
            }
        }
    }
}

func ==<S, A, B>(lhs: S, rhs: S) -> Bool where S : Sequence, A : Equatable, B : Equatable, S.Element == (A, B) {
    var lhsIterator = lhs.makeIterator()
    var rhsIterator = rhs.makeIterator()

    while let l = lhsIterator.next(), let r = rhsIterator.next() {
        if l != r {
            return false
        }
    }

    return lhsIterator.next() == nil && rhsIterator.next() == nil
}
