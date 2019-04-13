//
//  Intervalable.swift
//  DnA
//
//  Created by Resonance on 26/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

public protocol Intervalable : Comparable, CustomStringConvertible, Hashable {
    var range: ClosedRange<Int> { get }
    
    func overlaps<T>(with other: T) -> Bool where T : Intervalable
    
    func overlaps(with point: Int) -> Bool
}

public extension Intervalable {
    public var start: Int {
        return range.first!
    }
    public var end: Int {
        return range.last!
    }
    public var size: Int {
        return range.count
    }
    public func overlaps<T>(with other: T) -> Bool where T : Intervalable {
        return range.overlaps(other.range)
    }
    public func overlaps(with point: Int) -> Bool {
        return range.contains(point)
    }
}

extension Intervalable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(range)
    }
}

extension Intervalable {
    public var description: String {
        return range.description
    }
}

public func == <T>(lhs: T, rhs: T) -> Bool where T : Intervalable {
    return lhs.range == rhs.range
}

public func < <T>(lhs: T, rhs: T) -> Bool where T : Intervalable {
    return lhs.start != rhs.start ? lhs.start < rhs.start : lhs.end < rhs.end
}
