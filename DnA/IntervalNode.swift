//
//  IntervalNode.swift
//  DnA
//
//  Created by Resonance on 26/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

public struct IntervalNode<T> where T : Intervalable {
    enum Direction {
        case left
        case right
    }
    
    class Wrapper {
        var node: IntervalNode<T>
        init(node: IntervalNode<T>) {
            self.node = node
        }
    }
    
    private let left: Wrapper?
    private let right: Wrapper?
    private let point: Int
    private var intervals = [T]()
    
    public init<S>(intervals: S) where S : Sequence, S.Element == T {
        point = intervals.median
        
        var toLeft = [T]()
        var toRight = [T]()
        
        for interval in intervals {
            if interval.end < point {
                toLeft.append(interval)
            } else if interval.start > point {
                toRight.append(interval)
            } else {
                self.intervals.append(interval)
            }
        }
        
        if !toLeft.isEmpty {
            left = Wrapper(node: IntervalNode(intervals: toLeft))
        } else {
            left = nil
        }
        if !toRight.isEmpty {
            right = Wrapper(node: IntervalNode(intervals: toRight))
        } else {
            right = nil
        }
    }
    
    public func findOverlaps(interval: T) -> [T] {
        var overlaps = [T]()
        let clazz = type(of: self)
        
        if point < interval.start {
            addToOverLaps(interval: interval, overlaps: &overlaps, newOverlaps: clazz.findOverlappingRanges(wrapper: right, interval: interval))
            addToOverLaps(interval: interval, overlaps: &overlaps, newOverlaps: checkForOverlapsToTheRight(interval: interval))
        } else if point > interval.end {
            addToOverLaps(interval: interval, overlaps: &overlaps, newOverlaps: clazz.findOverlappingRanges(wrapper: left, interval: interval))
            addToOverLaps(interval: interval, overlaps: &overlaps, newOverlaps: checkForOverlapsToTheLeft(interval: interval))
        } else {
            addToOverLaps(interval: interval, overlaps: &overlaps, newOverlaps: intervals)
            addToOverLaps(interval: interval, overlaps: &overlaps, newOverlaps: clazz.findOverlappingRanges(wrapper: left, interval: interval))
            addToOverLaps(interval: interval, overlaps: &overlaps, newOverlaps: clazz.findOverlappingRanges(wrapper: right, interval: interval))
        }
        
        return overlaps
    }
    
    func addToOverLaps(interval: T, overlaps: inout [T], newOverlaps: [T]) {
        for currentInterval in newOverlaps where currentInterval == interval {
            overlaps.append(currentInterval)
        }
    }
    
    func checkForOverlapsToTheLeft(interval: T) -> [T] {
        return checkForOverlaps(interval: interval, direction: .left)
    }
    
    func checkForOverlapsToTheRight(interval: T) -> [T] {
        return checkForOverlaps(interval: interval, direction: .right)
    }
    
    func checkForOverlaps(interval: T, direction: Direction) -> [T] {
        var overlaps = [T]()
        for currentInterval in intervals {
            switch direction {
            case .left:
                if currentInterval.start <= interval.end {
                    overlaps.append(currentInterval)
                }
            case .right:
                if currentInterval.end >= interval.start {
                    overlaps.append(currentInterval)
                }
            }
        }
        return overlaps
    }
    
    static func findOverlappingRanges(wrapper: Wrapper?, interval: T) -> [T] {
        guard let wrapper = wrapper else {
            return []
        }
        return wrapper.node.findOverlaps(interval: interval)
    }
}

public extension Sequence where Element : Intervalable {
    var median: Int {
        var start = -1
        var end = -1
        for interval in self {
            let currentStart = interval.start
            let currentEnd = interval.end
            if start == -1 || currentStart < start {
                start = currentStart
            }
            if end == -1 || currentEnd > end {
                end = currentEnd
            }
        }
        return (start + end) / 2
    }
}
