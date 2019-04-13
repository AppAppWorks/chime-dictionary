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
            
            if let serializables = v as? [Serializable?] {
                $0.v = try serializables.map { try $0?.serializedData() ?? Data() }
            } else if let indices = v as? [[Int]?] {
                $0.v = indices.map { $0?.persistent ?? Data() }
            }
        }
        return try persistent.serializedData()
    }
    
    public init(serializedData: Data) throws {
        let persistent = try AhoCorasickDoubleArrayTriePst(serializedData: serializedData)

        base = persistent.base.ints
        check = persistent.check.ints
        fail = persistent.fail.ints
        l = persistent.l.ints
        output = persistent.output.map { $0.values.isEmpty ? nil : $0.values.ints }
        
        if let sType = V.V.self as? Serializable.Type {
            v = try persistent.v.map { $0.isEmpty ? nil : try sType.init(serializedData: $0) as? V.V }
        } else if V.V.self == [Int].self {
            let indicesList: [[Int]?] = persistent.v.map { $0.array() }
            v = indicesList as! [V.V?]
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
    init(serializedData: Data) throws
}

public protocol Value {
    associatedtype V
    associatedtype O
    static func serialized(v: [V?]) throws -> O
}

public struct SerializeableValue<V> : Value where V : Serializable {
    public static func serialized(v: [V?]) throws -> [Data] {
        return try v.map { try $0?.serializedData() ?? Data() }
    }
}

public struct IndexValue : Value {
    public static func serialized(v: [[Int]?]) throws -> [[Int64]] {
        return v.map { $0?.map { Int64($0) } ?? [] }
    }
}

extension Array {
    var persistent: Data {
        return withUnsafeBufferPointer { Data(buffer: $0) }
    }
}

extension Data {
    func array<E>() -> [E]? {
        if isEmpty {
            return nil
        }
        return withUnsafeBytes {
            Array(UnsafeBufferPointer<E>(start: $0, count: count / MemoryLayout<E>.stride))
        }
    }
}
