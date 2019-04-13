//
//  Syllable+Extension.swift
//  Canto
//
//  Created by Resonance on 22/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import BaseDictionary

extension PhoneticInfo : BaseDictionary.Syllables {
    public static func getNone() -> PhoneticInfo {
        return PhoneticInfo(pronunciations: [], offsetPairs: [])
    }
    
    public var count: Int {
        if offsetPairs.isEmpty {
            return pronunciations.isEmpty ? 1 : pronunciations[0].count
        }
        let difference = offsetPairs.reduce(0) { $0 + $1.termOffset.count - $1.syllableOffset.count }
        return pronunciations[0].count + difference
    }
    
    public var first: PhoneticInfo {
        if pronunciations.isEmpty {
            return self
        }
        if let firstOffsetPair = offsetPairs.first, firstOffsetPair.termOffset.startIndex == 0 {
            return PhoneticInfo(pronunciations: pronunciations.map { Array($0[firstOffsetPair.syllableOffset]) }, offsetPairs: [firstOffsetPair])
        } else {
            return PhoneticInfo(pronunciations: pronunciations.map { [$0[0]] }, offsetPairs: [])
        }
    }
    
//    public func serializedData() throws -> Data {
//        let syllablesDataPair = pronunciations.dataPair!
//        let offsetsDataPair = offsetPairs.dataPair
//
//        let dataPairs = [syllablesDataPair, offsetsDataPair]
//        let dataCount = dataPairs.reduce(0) { $0 + ($1?.count ?? MemoryLayout<Int>.stride) }
//
//        var data = Data(count: dataCount)
//
//        dataPairs.forEach {
//            if let dataPair = $0 {
//                data.append(dataPair.data)
//            } else {
//                data.append(withUnsafeBytes(of: 0) { Data($0) })
//            }
//        }
//
//        return data
//    }
//
//    public init?(serializedData: Data) {
//        let syllablesSize: Int = serializedData[..<MemoryLayout<Int>.stride].value()
//
//        var serializedData = serializedData.advanced(by: MemoryLayout<Int>.stride)
//        pronunciations = serializedData[..<syllablesSize].array()
//
//        serializedData = serializedData.advanced(by: syllablesSize)
//
//        let offsetSize: Int = serializedData[..<MemoryLayout<Int>.stride].value()
//
//        if offsetSize == 0 {
//            offsetPairs = []
//        } else {
//            serializedData = serializedData.advanced(by: MemoryLayout<Int>.stride)
//            offsetPairs = serializedData[..<offsetSize].array()
//        }
//    }
    
    public func serializedData() throws -> Data {
        let persistent = CantoPhoneticInfoPst.with {
            $0.pronunciations =
                pronunciations.map { pronunciation in
                    .with {
                        $0.syllables = pronunciation.map { Int32($0.rawValue) }
                    }
                }
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
    
    public init?(serializedData: Data) {
        guard let persistent = try? CantoPhoneticInfoPst(serializedData: serializedData) else {
            return nil
        }
        
        pronunciations = persistent.pronunciations.map {
            $0.syllables.map { Syllable(rawValue: Int($0))! }
        }
        offsetPairs = persistent.offsetPairs.map {
            (Int($0.termStart)..<Int($0.termEnd), Int($0.syllableStart)..<Int($0.syllableEnd))
        }
    }
}

extension PhoneticInfo {
    func dissect(term: String) -> (charGroups: [String], syllableGroups: [[[Syllable]]]) {
        if offsetPairs.isEmpty {
            return (term.map { String($0) }, pronunciations.map { [$0] })
        }
        
        var charStart = 0
        var syllableStart = 0
        let chars = Array(term)
        var charGroups = [String]()
        var syllableGroups = [[[Syllable]]](repeating: [], count: pronunciations.count)
        
        for offsetPair in offsetPairs {
            let charEnd = offsetPair.termOffset.startIndex
            charGroups.append(contentsOf: chars[charStart..<charEnd].map { String($0) })
            charStart = offsetPair.termOffset.endIndex
            
            let syllableEnd = offsetPair.syllableOffset.startIndex
            for i in syllableGroups.indices {
                syllableGroups[i].append(contentsOf: pronunciations[i][syllableStart..<syllableEnd].map { [$0] })
            }
            syllableStart = offsetPair.syllableOffset.endIndex
            
            charGroups.append(String(chars[offsetPair.termOffset]))
            for i in syllableGroups.indices {
                syllableGroups[i].append(Array(pronunciations[i][offsetPair.syllableOffset]))
            }
        }
        
        if charStart < chars.count {
            charGroups.append(contentsOf: chars[charStart...].map { String($0) })
            for i in syllableGroups.indices {
                syllableGroups[i].append(contentsOf: pronunciations[i][syllableStart...].map { [$0] })
            }
        }
        
        return (charGroups, syllableGroups)
    }
}

extension Array {
    var dataPair: (data: Data, count: Int)? {
        guard !isEmpty else { return nil }
        let data = withUnsafeBufferPointer { Data(buffer: $0) }
        return (data, data.count)
    }
}

extension Data {
    func array<E>() -> [E] {
        return withUnsafeBytes {
            Array(UnsafeBufferPointer<E>(start: $0, count: count / MemoryLayout<E>.stride))
        }
    }
    
    func value<T>() -> T {
        return withUnsafeBytes { $0.pointee }
    }
}

extension Syllable {
    static let jyutPingToValue = allCases.reduce(into: [:]) {
        $0[$1.jyutPingWithTone] = $1
    }
    
    static let jyutPing9ToValue = allCases.reduce(into: [:]) {
        $0[$1.jyutPing9] = $1
    }
    
    static let encodedValueToEnum = allCases.reduce(into: [Int : Syllable]()) {
        let info = $1.info
        let encodedValue = Int(info.initial.rawValue) + (Int(info.final.rawValue) << 8) + (Int(info.tone.rawValue) << 16)
        $0[encodedValue] = $1
    }
    
    public var final: Final {
        return info.final
    }
    public var initial: Initial {
        return info.initial
    }
    public var tone: Tone {
        return info.tone
    }
    public var jyutPing: String {
        return info.jyutPing
    }
    public var jyutPingWithTone: String {
        return info.jyutPingWithTone
    }
    public var jyutPing9: String {
        return info.jyutPing9
    }
//    public var pseudoIPA: String {
//        let info = self.info
//        return "\(info.initial.pseudoIPA)\(info.final.pseudoIPA)\(info.tone.rawValue)"
//    }
    public var encodedString: String {
        let info = self.info
        return String(bytes: [info.initial.encodedValue, info.final.encodedValue, info.tone.encodedValue], encoding: .utf8)!
    }
    
    public init?(jyutPing: String) {
        guard let value = Syllable.jyutPingToValue[jyutPing] else { return nil }
        self = value
    }
    
    public init?(jyutPing9: String) {
        guard let value = Syllable.jyutPing9ToValue[jyutPing9] else { return nil }
        self = value
    }
    
    public init?(initialValue: UInt8, finalValue: UInt8, toneValue: UInt8) {
        let combinedValue = Int(initialValue) + (Int(finalValue - Syllable.Initial.count) << 8) + (Int(toneValue - Syllable.Initial.count - Syllable.Final.count) << 16)
        guard let value = Syllable.encodedValueToEnum[combinedValue] else { return nil }
        self = value
    }
    
    public func distance(from other: Syllable) -> Int {
        if self == other {
            return 0
        }
        let myInfo = info
        let otherInfo = other.info
        var distance = 0
        if myInfo.initial == otherInfo.initial {
        } else if myInfo.initial.isFuzzy(of: otherInfo.initial) {
            distance += 1
        } else {
            distance += 2
        }
        if myInfo.final == otherInfo.final {
        } else if myInfo.final.isFuzzy(of: otherInfo.final) {
            distance += 1
        } else {
            distance += 2
        }
        if myInfo.tone != otherInfo.tone {
            distance += 2
        }
        return distance
    }
}

extension Collection where Element == Syllable {
    public func distance(from other: Self) -> Int? {
        if count != other.count {
            return nil
        }
        return zip(self, other).reduce(0) { $0 + $1.0.distance(from: $1.1) }
    }
}

extension Syllable : LazyFuzzy {
    public func isLazy(of other: Syllable) -> Bool {
        if self == other || tone != other.tone {
            return false
        }
        
        let isInitialLazy = initial.isLazy(of: other.initial)
        let isFinalLazy = final.isLazy(of: other.final)
        
        return (isInitialLazy && isFinalLazy) || (isInitialLazy && final == other.final) || (isFinalLazy && initial == other.initial)
    }
}

extension Syllable.Initial : LazyFuzzy {
    var name: String {
        return self == .none ? "" : "\(self)"
    }
    
    var academy: String {
        switch self {
        case .c: return "ts"
        case .z: return "dz"
        default: return name
        }
    }
    
//    var pseudoIPA: Character {
//        switch self {
//        case .c: return "ʦ"
//        case .gw: return "gͧ"
//        case .kw: return "kͧ"
//        case .ng: return "ŋ"
//        case .z: return "ʣ"
//        case .none: return "∅"
//        case _: return "\(self)".first!
//        }
//    }
    
    var encodedValue: UInt8 {
        return rawValue
    }
    
    public func isLazy(of other: Syllable.Initial) -> Bool {
        switch (self, other) {
        case (.g, .gw), (.k, .kw), (.none, .ng), (.l, .n): return true
        case _: return false
        }
    }
    
    fileprivate static let count = UInt8(allCases.count)
}

extension Syllable.Final : LazyFuzzy {
    var name: String {
        return self == .none ? "" : "\(self)"
    }
    
    var 入聲: Bool {
        switch self {
        case .aak, .aap, .aat, .ak, .ap, .at, .ek, .eot, .ep, .et, .ik, .ip, .it, .oek, .ok, .ot, .uk, .ut, .yut:
            return true
        default:
            return false
        }
    }
    
    var academy: String {
        switch self {
        case .eoi: return "oey"
        case .eon: return "oen"
        case .eot: return "oet"
        case .yu: return "y"
        case .yun: return "yn"
        case .yut: return "yt"
        default: return name
        }
    }
    
//    var pseudoIPA: String {
//        switch self {
//        case .aa: return "a"
//        case .aai: return "ai"
//        case .aak: return "ak"
//        case .aam: return "am"
//        case .aan: return "an"
//        case .aang: return "aŋ"
//        case .aap: return "ap"
//        case .aat: return "at"
//        case .aau: return "au"
//        case .ai: return "ɐi"
//        case .ak: return "ɐk"
//        case .am: return "ɐm"
//        case .an: return "ɐn"
//        case .ang: return "ɐŋ"
//        case .ap: return "ɐp"
//        case .at: return "ɐt"
//        case .au: return "ɐu"
//        case .e: return "ɛ"
//        case .ei: return "ei"
//        case .ek: return "ɛk"
//        case .em: return "ɛm"
//        case .en: return "ɛn"
//        case .eng: return "ɛŋ"
//        case .eoi: return "ɵy"
//        case .eon: return "ɵn"
//        case .eot: return "ɵt"
//        case .ep: return "ɛp"
//        case .et: return "ɛt"
//        case .eu: return "ɛu"
//        case .i: return "i"
//        case .ik: return "ek"
//        case .im: return "im"
//        case .`in`: return "in"
//        case .ing: return "eŋ"
//        case .ip: return "ip"
//        case .it: return "it"
//        case .iu: return "iu"
//        case .m: return "m̩"
//        case .ng: return "ŋ̩"
//        case .o: return "ɔ"
//        case .oi: return "ɔy"
//        case .oe: return "œ"
//        case .oek: return "œk"
//        case .oeng: return "œŋ"
//        case .ok: return "ɔk"
//        case .on: return "ɔn"
//        case .ong: return "ɔŋ"
//        case .ot: return "ɔt"
//        case .ou: return "ou"
//        case .u: return "u"
//        case .ui: return "ui"
//        case .uk: return "ok"
//        case .un: return "un"
//        case .ung: return "oŋ"
//        case .ut: return "ut"
//        case .yu: return "y"
//        case .yun: return "yn"
//        case .yut: return "yt"
//        }
//    }
    
    var encodedValue: UInt8 {
        return Syllable.Initial.count + rawValue
    }
    
    public func isLazy(of other: Syllable.Final) -> Bool {
        switch (self, other) {
        case (.m, .ng), (.an, .ang), (.aan, .aang), (.aat, .aak), (.ak, .at), (.en, .eng), (.ok, .ot), (.on, .ong): return true
        case _: return false
        }
    }
    
    fileprivate static let count = UInt8(allCases.count)
}

extension Syllable.Tone {
    var encodedValue: UInt8 {
        return Syllable.Initial.count + Syllable.Final.count + rawValue
    }
    var 入聲調: UInt8 {
        switch self {
        case .陰平: return 7
        case .陰去: return 8
        case .陽去: return 9
        default: return rawValue
        }
    }
}
