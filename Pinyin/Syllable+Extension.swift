//
//  Syllable+Extension.swift
//  Pinyin
//
//  Created by Resonance on 22/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import BaseDictionary

extension Syllables : BaseDictionary.Syllables {
    public static func getNone() -> Syllables {
        return .none
    }
    
    public var count: Int {
        switch self {
        case .china(let syllables), .chinas(let syllables, _):
            return syllables.count
        default:
            return 1
        }
    }
    
    public var first: Syllables {
        switch self {
        case .china(let syllables):
            return .china(syllables: [syllables[0]])
        case .chinas(let roc, let prc):
            return .chinas(roc: [roc[0]], prc: [prc[0]])
        default:
            return .none
        }
    }
    
    public func serializedData() throws -> Data {
        let persistent = PinyinSyllablesPst.with {
            switch self {
            case .china(let syllables): $0.value = .china(.with { $0.syllables = syllables.int32s })
            case .chinas(let roc, let prc): $0.value = .chinas(.with { $0.roc = roc.int32s; $0.prc = prc.int32s })
            case .none: $0.value = .none(true)
            }
        }
        return try persistent.serializedData()
    }
    
    public init(serializedData: Data) throws {
        let persistent = try PinyinSyllablesPst(serializedData: serializedData)
        switch persistent.value! {
        case .china(let china): self = .china(syllables: china.syllables.syllables)
        case .chinas(let chinas): self = .chinas(roc: chinas.roc.syllables, prc: chinas.prc.syllables)
        case .none(_):  self = .none
        }
    }
}

extension Sequence where Element == Syllable {
    var int32s: [Int32] {
        return map { Int32($0.rawValue) }
    }
}

extension Sequence where Element == Int32 {
    var syllables: [Syllable] {
        return map { Syllable(rawValue: Int($0))! }
    }
}

extension Syllable {
    private static let pinyinToValue = allCases.reduce(into: [:]) {
        $0["\($1.pinyinWithoutTone)\($1.tone.rawValue)"] = $1
    }
    private static let bopomofoToValue = allCases.reduce(into: [:]) {
        $0[$1.bopomofoWithTone] = $1
    }
    
    public var a聲母: 聲母 {
        return info.a聲母
    }
    public var a韻母: 韻母 {
        return info.a韻母
    }
    public var tone: Tone {
        return info.tone
    }
    public var pinyinWithTone: String {
        return info.pinyinWithTone
    }
    public var pinyinWithoutTone: String {
        return info.pinyinWithoutTone
    }
    public var head: Head {
        return info.head
    }
    public var firstChar: Character {
        return info.firstChar
    }
    public var bopomofo: String {
        return info.bopomofo
    }
    public var bopomofoWithTone: String {
        return info.bopomofoWithTone
    }
    
    public init?(pinyin: String) {
        guard let value = Syllable.pinyinToValue[pinyin] else { return nil }
        self = value
    }
    
    public init?(bopomofo: String) {
        guard let value = Syllable.bopomofoToValue[bopomofo] else { return nil }
        self = value
    }
}
