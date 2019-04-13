//
//  Phonemes.swift
//  BaseDictionary
//
//  Created by Resonance on 7/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import DnA

public protocol Syllables : Serializable {
    static func getNone() -> Self
    var count: Int { get }
    var first: Self { get }
}

public protocol LazyFuzzy {
    func isLazy(of other: Self) -> Bool
    func isFuzzy(of other: Self) -> Bool
}

extension LazyFuzzy {
    public func isFuzzy(of other: Self) -> Bool {
        return isLazy(of: other) || other.isLazy(of: self)
    }
}

public protocol OffsetPairPersistent {
    var termStart: Int32 { get set }
    
    var termEnd: Int32 { get set }
    
    var syllableStart: Int32 { get set }
    
    var syllableEnd: Int32 { get set }
    
    init()
}

public typealias OffsetPair = (termOffset: Range<Int>, syllableOffset: Range<Int>)

extension OffsetPairPersistent {
    public init(offsetPair: OffsetPair) {
        self.init()
        consume(offsetPair: offsetPair)
    }
    
    public mutating func consume(offsetPair: OffsetPair) {
        termStart = Int32(offsetPair.termOffset.startIndex)
        termEnd = Int32(offsetPair.termOffset.endIndex)
        syllableStart = Int32(offsetPair.syllableOffset.startIndex)
        syllableEnd = Int32(offsetPair.syllableOffset.endIndex)
    }
    
    public var offsetPair: OffsetPair {
        return (Int(termStart)..<Int(termEnd), Int(syllableStart)..<Int(syllableEnd))
    }
}

extension Array where Element == OffsetPair {
    public func offsetPairsPersistent<T>() -> [T] where T : OffsetPairPersistent {
        return map { T(offsetPair: $0) }
    }
}

extension Array where Element : OffsetPairPersistent {
    public var offsetPairs: [OffsetPair] {
        return map { $0.offsetPair }
    }
}
