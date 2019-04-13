//
//  CantoStruct.swift
//  CantoFuzzyDict
//
//  Created by Resonance on 10/2/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import BaseDictionary
import Canto
import SymSpell

struct CantoStruct {
    let jyutPing: [CantoSyllable]
    let termData: [(term: String, offsetPairs: [OffsetPair])]
}

extension CantoStruct : SymSpellKey {
    public var stringValue: String {
        return jyutPing.reduce(into: "") { $0.append($1.encodedString) }
    }
    
    public func serializedData() throws -> Data {
        let persistent = CantoStructPst.with {
            $0.jyutPing = jyutPing.map { Int32($0.rawValue) }
            $0.termData = termData.map { payload in
                CantoStructPst.TermDatum.with {
                    $0.term = payload.term
                    $0.offsetPairs = payload.offsetPairs.offsetPairsPersistent()
                }
            }
        }
        return try persistent.serializedData()
    }
    
    public init(serializedData: Data) throws {
        let persistent = try CantoStructPst(serializedData: serializedData)
        jyutPing = persistent.jyutPing.map { CantoSyllable(rawValue: Int($0))! }
        termData = persistent.termData.map {
            ($0.term, $0.offsetPairs.offsetPairs)
        }
    }
    
    static func ==(lhs: CantoStruct, rhs: CantoStruct) -> Bool {
        return zip(lhs.jyutPing, rhs.jyutPing).contains { $0 != $1 }
    }
}

extension CantoStruct : CustomStringConvertible {
    public var description: String {
        return "CantoStruct(中文: \(termData.map { $0.term }), 粵拼: \"\(jyutPing.map { "\($0)" }.joined(separator: " "))\")"
    }
}

extension OffsetPairPst : OffsetPairPersistent {}
