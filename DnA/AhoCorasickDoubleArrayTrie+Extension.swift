//
//  AhoCorasickDoubleArrayTrie+Extension.swift
//  DnA
//
//  Created by Resonance on 22/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import SwiftProtobuf

extension AhoCorasickDoubleArrayTrie : Serializable {
    public func serializedData() throws -> Data {
        let persistent = try AhoCorasickDoubleArrayTriePst.with {
            $0.base = base.int64s
            $0.check = check.int64s
            $0.fail = fail.int64s
            $0.l = l.int64s
            $0.output = output.map { values in AhoCorasickDoubleArrayTriePst.IntArray.with { $0.values = values?.int64s ?? [] } }
            $0.v = try v.map { try $0?.serializedData() ?? Data() }
        }
        return try persistent.serializedData()
    }
    
    public init?(serializedData: Data) {
        do {
            let persistent = try AhoCorasickDoubleArrayTriePst(serializedData: serializedData)

            base = persistent.base.ints
            check = persistent.check.ints
            fail = persistent.fail.ints
            l = persistent.l.ints
            output = persistent.output.map { $0.values.isEmpty ? nil : $0.values.ints }
            v = persistent.v.map { $0.isEmpty ? nil : V(serializedData: $0) }
        } catch {
            debugPrint(error)
            return nil
        }
    }
}

extension Sequence where Element == Int {
    var int64s: [Int64] {
        return map { Int64($0) }
    }
}

extension Sequence where Element == Int64 {
    var ints: [Int] {
        return map { Int($0) }
    }
}

public protocol Serializable {
    func serializedData() throws -> Data
    init?(serializedData: Data)
}
