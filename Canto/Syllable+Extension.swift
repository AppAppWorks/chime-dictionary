//
//  Syllable+Extension.swift
//  Canto
//
//  Created by Resonance on 22/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import BaseDictionary

//extension PhoneticInfo : BaseDictionary.Syllables {
//    public static func getNone() -> PhoneticInfo {
//        return PhoneticInfo(tradSimp: .none, offsetPairs: [])
//    }
//
//    public var count: Int {
//        if offsetPairs.isEmpty {
//            return tradSimp.isNone ? 1 : tradSimp.anyPronunciation.count
//        }
//        let difference = offsetPairs.reduce(0) { $0 + $1.termOffset.count - $1.syllableOffset.count }
//        return tradSimp.anyPronunciation.count + difference
//    }
//
//    public var first: PhoneticInfo {
//        if tradSimp.isNone {
//            return self
//        }
//        if let firstOffsetPair = offsetPairs.first, firstOffsetPair.termOffset.startIndex == 0 {
//            return PhoneticInfo(tradSimp: tradSimp.prefix(firstOffsetPair.termOffset.count), offsetPairs: [firstOffsetPair])
//        } else {
//            return PhoneticInfo(tradSimp: tradSimp.prefix(1), offsetPairs: [])
//        }
//    }
//
//    public func referenceTerms(masterTerms: [String]) -> [String]? {
//        switch tradSimp {
//        case .simplified(let simplified), .tradSimp(_, let simplified):
//            switch simplified.reference {
//            case .traditionalDirect(let terms): return terms
//            case .traditionalIndirect(let termIdxs): return termIdxs.map { masterTerms[$0] }
//            }
//        default: return nil
//        }
//    }
//
//    //    public func serializedData() throws -> Data {
//    //        let syllablesDataPair = pronunciations.dataPair!
//    //        let offsetsDataPair = offsetPairs.dataPair
//    //
//    //        let dataPairs = [syllablesDataPair, offsetsDataPair]
//    //        let dataCount = dataPairs.reduce(0) { $0 + ($1?.count ?? MemoryLayout<Int>.stride) }
//    //
//    //        var data = Data(count: dataCount)
//    //
//    //        dataPairs.forEach {
//    //            if let dataPair = $0 {
//    //                data.append(dataPair.data)
//    //            } else {
//    //                data.append(withUnsafeBytes(of: 0) { Data($0) })
//    //            }
//    //        }
//    //
//    //        return data
//    //    }
//    //
//    //    public init?(serializedData: Data) {
//    //        let syllablesSize: Int = serializedData[..<MemoryLayout<Int>.stride].value()
//    //
//    //        var serializedData = serializedData.advanced(by: MemoryLayout<Int>.stride)
//    //        pronunciations = serializedData[..<syllablesSize].array()
//    //
//    //        serializedData = serializedData.advanced(by: syllablesSize)
//    //
//    //        let offsetSize: Int = serializedData[..<MemoryLayout<Int>.stride].value()
//    //
//    //        if offsetSize == 0 {
//    //            offsetPairs = []
//    //        } else {
//    //            serializedData = serializedData.advanced(by: MemoryLayout<Int>.stride)
//    //            offsetPairs = serializedData[..<offsetSize].array()
//    //        }
//    //    }
//
//    public func serializedData() throws -> Data {
//        let persistent = CantoPhoneticInfoPst.with {
//            $0.tradPronunciations = tradSimp.traditionalPronunciations.proto
//
//            if let simplified = tradSimp.simplified {
//                $0.simplified.pronunciations = simplified.pronunciations.proto
//                $0.simplified.reference = simplified.reference.proto
//            }
//
//            $0.offsetPairs =
//                offsetPairs.map { offsetPair in
//                    .with {
//                        $0.termStart = Int32(offsetPair.termOffset.startIndex)
//                        $0.termEnd = Int32(offsetPair.termOffset.endIndex)
//                        $0.syllableStart = Int32(offsetPair.syllableOffset.startIndex)
//                        $0.syllableEnd = Int32(offsetPair.syllableOffset.endIndex)
//                    }
//            }
//            fatalError("unimplemented")
//        }
//
//        return try persistent.serializedData()
//    }
//
//    public init(serializedData: Data) throws {
//        let persistent = try CantoPhoneticInfoPst(serializedData: serializedData)
//
//        let tradPronunciations = persistent.tradPronunciations.pronunciations
//        let simpPronunciations = persistent.simplified.pronunciations.pronunciations
//
//        func createSimplified() -> PhoneticInfo.TradSimp.Simplified {
//            return .init(pronunciations: simpPronunciations, reference: persistent.simplified.reference!.inMemory)
//        }
//
//        if tradPronunciations.isEmpty && simpPronunciations.isEmpty {
//            tradSimp = .none
//        } else if tradPronunciations.isEmpty {
//            tradSimp = .simplified(content: createSimplified())
//        } else if simpPronunciations.isEmpty {
//            tradSimp = .traditional(content: .init(pronunciations: tradPronunciations))
//        } else {
//            tradSimp = .tradSimp(traditional: .init(pronunciations: tradPronunciations), simplified: createSimplified())
//        }
//
//        offsetPairs = persistent.offsetPairs.map {
//            (Int($0.termStart)..<Int($0.termEnd), Int($0.syllableStart)..<Int($0.syllableEnd))
//        }
//    }
//}
//
//extension PhoneticInfo {
//    typealias SyllableGroup = [[Syllable]]
//
//    func dissect(term: String) -> (charGroups: [String], syllableGroups: (traditional: [SyllableGroup], simplified: [SyllableGroup])) {
//        let traditionalPronunciations = tradSimp.traditionalPronunciations
//        let simplifiedPronunciations = tradSimp.simplifiedPronunciations
//
//        if offsetPairs.isEmpty {
//            return (term.map { String($0) }, (traditionalPronunciations.map { [$0] }, simplifiedPronunciations.map { [$0] }))
//        }
//
//        var charStart = 0
//        var syllableStart = 0
//        let chars = Array(term)
//        var charGroups = [String]()
//
//        var traditionalSyllableGroups = [SyllableGroup](repeating: [], count: traditionalPronunciations.count)
//        var simplifiedSyllableGroups = [SyllableGroup](repeating: [], count: simplifiedPronunciations.count)
//
//        for offsetPair in offsetPairs {
//            let charEnd = offsetPair.termOffset.startIndex
//            charGroups.append(contentsOf: chars[charStart..<charEnd].map { String($0) })
//            charStart = offsetPair.termOffset.endIndex
//
//            let syllableEnd = offsetPair.syllableOffset.startIndex
//            for i in traditionalPronunciations.indices {
//                traditionalSyllableGroups[i].append(contentsOf: traditionalPronunciations[i][syllableStart..<syllableEnd].map { [$0] })
//            }
//            for i in simplifiedPronunciations.indices {
//                simplifiedSyllableGroups[i].append(contentsOf: simplifiedPronunciations[i][syllableStart..<syllableEnd].map { [$0] })
//            }
//            syllableStart = offsetPair.syllableOffset.endIndex
//
//            charGroups.append(String(chars[offsetPair.termOffset]))
//            for i in traditionalSyllableGroups.indices {
//                traditionalSyllableGroups[i].append(Array(traditionalPronunciations[i][offsetPair.syllableOffset]))
//            }
//            for i in simplifiedSyllableGroups.indices {
//                simplifiedSyllableGroups[i].append(Array(simplifiedPronunciations[i][offsetPair.syllableOffset]))
//            }
//        }
//
//        if charStart < chars.count {
//            charGroups.append(contentsOf: chars[charStart...].map { String($0) })
//            for i in traditionalSyllableGroups.indices {
//                traditionalSyllableGroups[i].append(contentsOf: traditionalPronunciations[i][syllableStart...].map { [$0] })
//            }
//            for i in simplifiedSyllableGroups.indices {
//                simplifiedSyllableGroups[i].append(contentsOf: simplifiedPronunciations[i][syllableStart...].map { [$0] })
//            }
//        }
//
//        return (charGroups, (traditionalSyllableGroups, simplifiedSyllableGroups))
//    }
//}
//
//extension Sequence where Element : Sequence {
//    func flatPrefix(_ maxLength: Int) -> [[Element.Element]] {
//        return map { Array($0.prefix(maxLength)) }
//    }
//}
//
//extension PhoneticInfo.TradSimp.Traditional {
//    func prefix(_ maxLength: Int) -> PhoneticInfo.TradSimp.Traditional {
//        return .init(pronunciations: pronunciations.flatPrefix(maxLength))
//    }
//}
//
//extension PhoneticInfo.TradSimp.Simplified {
//    func prefix(_ maxLength: Int) -> PhoneticInfo.TradSimp.Simplified {
//        return .init(pronunciations: pronunciations.flatPrefix(maxLength), reference: reference)
//    }
//}
//
//extension CantoPhoneticInfoPst.Simplified.OneOf_Reference {
//    var inMemory: PhoneticInfo.TradSimp.Simplified.Reference {
//        switch self {
//        case .tradDirects(let terms): return .traditionalDirect(terms: terms.values)
//        case .tradIndirects(let idxs): return .traditionalIndirect(termIdx: idxs.values.map { Int($0) })
//        }
//    }
//}
//
//extension PhoneticInfo.TradSimp.Simplified.Reference {
//    var proto: CantoPhoneticInfoPst.Simplified.OneOf_Reference {
//        switch self {
//        case .traditionalDirect(let terms): return .tradDirects(Strings.with { $0.values = terms })
//        case .traditionalIndirect(let idxs): return .tradIndirects(UInt32s.with { $0.values = idxs.map { UInt32($0) } })
//        }
//    }
//}
//
//extension PhoneticInfo.TradSimp {
//    var isNone: Bool {
//        if case .none = self {
//            return true
//        }
//        return false
//    }
//
//    var anyPronunciation: [Syllable] {
//        switch self {
//        case .none: return []
//        case .traditional(let traditional), .tradSimp(let traditional, _): return traditional.pronunciations[0]
//        case .simplified(let content): return content.pronunciations[0]
//        }
//    }
//
//    func prefix(_ maxLength: Int) -> PhoneticInfo.TradSimp {
//        switch self {
//        case .none: return self
//        case .traditional(let content): return .traditional(content: content.prefix(maxLength))
//        case .simplified(let content): return .simplified(content: content.prefix(maxLength))
//        case .tradSimp(let traditional, let simplified): return .tradSimp(traditional: traditional.prefix(maxLength), simplified: simplified.prefix(maxLength))
//        }
//    }
//
//    var traditionalPronunciations: [[Syllable]] {
//        switch self {
//        case .traditional(let traditional), .tradSimp(let traditional, _): return traditional.pronunciations
//        default: return []
//        }
//    }
//
//    var simplifiedPronunciations: [[Syllable]] {
//        return simplified?.pronunciations ?? []
//    }
//
//    var simplified: Simplified? {
//        switch self {
//        case .simplified(let simplified), .tradSimp(_, let simplified): return simplified
//        default: return nil
//        }
//    }
//}

extension Sequence where Element == [Syllable] {
    var proto: [UInt32s] {
        return map { pronunciation in UInt32s.with { $0.values = pronunciation.map { UInt32($0.rawValue) } } }
    }
}

extension Sequence where Element == UInt32s {
    var pronunciations: [[Syllable]] {
        return map { $0.values.map { Syllable(rawValue: Int($0))! } }
    }
}

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

//    public func referenceTerms(masterTerms: [String]) -> [String] {
//        switch reference {
//        case .none: return []
//        case .traditionalDirect(let terms): return terms
//        case .traditionalIndirect(let termIdxs): return termIdxs.map { masterTerms[$0] }
//        }
//    }

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
            $0.pronunciations = pronunciations.proto
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
        let persistent = try CantoPhoneticInfoPst(serializedData: serializedData)

        pronunciations = persistent.pronunciations.pronunciations
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
    
    public var encodedBytes: [UInt8] {
        let info = self.info
        return [info.initial.encodedValue, info.final.encodedValue, info.tone.encodedValue]
    }
    
    public init?(jyutPing: String) {
        guard let value = Syllable.jyutPingToValue[jyutPing] else { return nil }
        self = value
    }
    
    public init?(jyutPing9: String) {
        guard let value = Syllable.jyutPing9ToValue[jyutPing9] else { return nil }
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
            distance += 1
        }
        return distance
    }
}

extension Sequence where Element == Syllable {
    public var encodedString: String {
        return reduce(into: "") { $0.append($1.encodedString) }
    }
    public var encodedBytes: [UInt8] {
        return reduce(into: []) { $0 += $1.encodedBytes }
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

extension Syllable : BaseDictionary.Syllable {
    public typealias T = Int
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
