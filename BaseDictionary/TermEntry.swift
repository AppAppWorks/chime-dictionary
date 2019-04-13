//
//  TermEntry.swift
//  BaseDictionary
//
//  Created by Resonance on 20/3/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import Foundation

public protocol Syllable : Equatable {
    associatedtype T : BinaryInteger
    init?(rawValue: T)
    var rawValue: T { get }
}

public struct TermEntry<T> where T : Syllable {
    public typealias OffsetPair = (termOffset: Range<Int>, syllableOffset: Range<Int>)
    
    public let trad: String
    public var simp: String {
        return _simp.isEmpty ? trad : _simp
    }
    let _simp: String
    
    public let pronunciations: [[T]]
    public let offsetPairs: [OffsetPair]
    
    public init(trad: String = "", simp: String = "", pronunciations: [[T]] = [], offsetPairs: [OffsetPair] = []) {
        self.trad = trad
        self._simp = trad == simp ? "" : simp
        self.pronunciations = pronunciations
        self.offsetPairs = offsetPairs
    }
    
    init(trad: String, _simp: String, pronunciations: [[T]], offsetPairs: [OffsetPair] = []) {
        self.trad = trad
        self._simp = _simp
        self.pronunciations = pronunciations
        self.offsetPairs = offsetPairs
    }
    
    @discardableResult
    public mutating func insert(pronunciation: [T]) -> Bool {
        if pronunciations.contains(pronunciation) {
            return false
        } else {
            self = TermEntry(trad: trad, _simp: _simp, pronunciations: pronunciations + [pronunciation], offsetPairs: offsetPairs)
            return true
        }
    }
}

extension TermEntry : Syllables {
    public func serializedData() throws -> Data {
        let persistent = TermEntryPst.with {
            $0.trad = trad
            $0.simp = _simp
            $0.pronunciations = pronunciations.map { $0.proto }
            $0.offsetPairs =
                offsetPairs.map { offsetPair in
                    .with {
                        $0.termStart = Int32(offsetPair.termOffset.startIndex)
                        $0.termEnd = Int32(offsetPair.termOffset.endIndex)
                        $0.syllableStart = Int32(offsetPair.syllableOffset.startIndex)
                        $0.syllableEnd = Int32(offsetPair.syllableOffset.endIndex)
                    }
            }
        }
        
        return try persistent.serializedData()
    }
    
    public init(serializedData: Data) throws {
        let persistent = try TermEntryPst(serializedData: serializedData)
        
        trad = persistent.trad
        _simp = persistent.simp
        pronunciations = persistent.pronunciations.inMemory()
        offsetPairs = persistent.offsetPairs.map {
            (Int($0.termStart)..<Int($0.termEnd), Int($0.syllableStart)..<Int($0.syllableEnd))
        }
    }
    
    public static func getNone() -> TermEntry {
        return TermEntry()
    }
    
    public var count: Int {
        if offsetPairs.isEmpty {
            return pronunciations.isEmpty ? 1 : pronunciations[0].count
        }
        let difference = offsetPairs.reduce(0) { $0 + $1.termOffset.count - $1.syllableOffset.count }
        return pronunciations[0].count + difference
    }
    
    public var first: TermEntry {
        if pronunciations.isEmpty {
            return self
        }
        if let firstOffsetPair = offsetPairs.first, firstOffsetPair.termOffset.startIndex == 0 {
            return TermEntry(trad: trad, _simp: _simp, pronunciations: pronunciations.map { Array($0[firstOffsetPair.syllableOffset]) }, offsetPairs: [firstOffsetPair])
        } else {
            return TermEntry(trad: trad, _simp: _simp, pronunciations: pronunciations.map { [$0[0]] })
        }
    }
}

extension TermEntry : Comparable {
    public static func ==(lhs: TermEntry, rhs: TermEntry) -> Bool {
        return lhs.trad == rhs.trad
            && lhs._simp == rhs._simp
    }
    
    public static func <(lhs: TermEntry, rhs: TermEntry) -> Bool {
        if lhs.trad == rhs.trad {
            return lhs._simp < rhs._simp
        }
        return lhs.trad < rhs.trad
    }
}

extension TermEntry : Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(trad)
        hasher.combine(_simp)
    }
}

extension Sequence where Element : Syllable {
    var proto: UInt32s {
        return UInt32s.with { $0.values = map { UInt32($0.rawValue) } }
    }
}

extension Sequence where Element == UInt32s {
    func inMemory<E>() -> [[E]] where E : Syllable {
        return map { $0.values.map { E(rawValue: E.T($0))! } }
    }
}
