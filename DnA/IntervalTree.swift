//
//  IntervalTree.swift
//  DnA
//
//  Created by Resonance on 26/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

public struct IntervalTree<T> where T : Intervalable {
    private let rootNode: IntervalNode<T>
    
    public init(intervals: [T]) {
        rootNode = IntervalNode(intervals: intervals)
    }
    
    public func removeOverlaps<S>(intervals: S) -> [T] where S : Sequence, S.Element == T {
        var intervals = intervals.sorted {
            return $1.size != $0.size ? $1.size < $0.size : $0.start < $1.start
        }
        
        var removedIntervals = Set<T>()
        
        for interval in intervals where !removedIntervals.contains(interval) {
            findOverlaps(interval: interval).forEach { removedIntervals.insert($0) }
        }
        
        for removedInterval in removedIntervals.sorted() {
            intervals.firstIndex(of: removedInterval).map { intervals.remove(at: $0) }
        }
        
        intervals.sort {
            $0.start < $1.start
        }
        
        return intervals
    }
    
    public func findOverlaps(interval: T) -> [T] {
        return rootNode.findOverlaps(interval: interval)
    }
}
