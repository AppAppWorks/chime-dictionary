//
//  CantoTests.swift
//  CantoTests
//
//  Created by Resonance on 8/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//

import XCTest
@testable import BaseDictionary
@testable import Canto

extension TermEntry {
//    var simp: String {
//        return TermEntry.decompress(simp: _simp, withTrad: trad)
//    }
//    fileprivate let _simp: String
    
//    init(trad: String, simp: String, pronunciations: [[Syllable]], offsetPairs: [(Range<Int>, Range<Int>)]) {
//        self.trad = trad
//        _simp = TermEntry.compress(simp: simp, withTrad: trad)
//        self.pronunciations = pronunciations
//        self.offsetPairs = offsetPairs
//    }
    
//    static func compress(simp: String, withTrad trad: String) -> String {
//        return zip(simp, trad).reduce(into: "") {
//            $0.append($1.0 == $1.1 ? " " : $1.1)
//        }
//    }
//
//    static func decompress(simp: String, withTrad trad: String) -> String {
//        return zip(simp, trad).reduce(into: "") {
//            $0.append($1.0 == " " ? $1.1 : $1.1)
//        }
//    }
    var jsonStr: String {
        return "\(trad) \(simp) \(pronunciations.map { $0.map { "\($0)" } })"
    }
}

class CantoTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSyllable() {
        let syllable1 = Syllable.zik3
        XCTAssertFalse(syllable1.isFuzzy(of: .zit1))
        
        let syllable2 = Syllable.sang1
        XCTAssertTrue(syllable2.isFuzzy(of: .san1))
        
        let syllable3 = Syllable.hon1
        XCTAssertTrue(syllable3.isFuzzy(of: .hong1))
        
        let syllable4 = Syllable.ngan4
        XCTAssertTrue(syllable4.isFuzzy(of: .an4))
    }
    
    func intertwine<E>(bases: [(E, E)]) -> [[E]] where E : Equatable {
        var intertwined = bases.map { $0.0 }
        var intertwineds = [intertwined]
        
        for i in 1..<bases.count {
            intertwine(prevPos: -1, length: bases.count, rank: 1, total: i, bases: bases, interwined: &intertwined, interwineds: &intertwineds)
        }
        
        return intertwineds
    }
    
    func intertwine<E>(prevPos: Int, length: Int, rank: Int, total: Int, bases: [(E, E)], interwined: inout [E], interwineds: inout [[E]]) where E : Equatable {
        for i in (prevPos + 1)..<(length - total + rank) where bases[i].0 != bases[i].1 {
            if rank == total {
                interwined[i] = bases[i].1
                interwineds.append(interwined)
                interwined[i] = bases[i].0
            } else {
                interwined[i] = bases[i].1
                intertwine(prevPos: i, length: length, rank: rank + 1, total: total, bases: bases, interwined: &interwined, interwineds: &interwineds)
                interwined[i] = bases[i].0
            }
        }
    }
    
    private func ccCantoReader() -> AnySequence<String>? {
        let path = "/Users/Resonance/Downloads/CCCanto/cccedict-canto-readings-150923.txt"
        return StreamReader(path: path)?.drop { $0.first == "#" }
    }
    
    func testIntertwineds() {
        guard let streamReader = ccCantoReader() else {
            return
        }
        
        var line = 0
        var intertwinedsCount = 0
        
        var allIntertwineds = [String]()
        var simps = Set<String>()
        var trads = Set<String>()
        
        streamReader.forEach {
            let threeComponents = $0.split(separator: " ", maxSplits: 2)
            
            let trad = String(threeComponents[0])
            let simp = String(threeComponents[1])
            
            simps.insert(simp)
            trads.insert(trad)
            
            if trad.count > 1 {
                let intertwineds = self.intertwineds(trad: trad, simp: simp)
                
                let increment = intertwineds.count * trad.count
                intertwinedsCount += increment
                
                allIntertwineds += intertwineds
//                if increment > 12 {
//                    print(intertwineds.map { String($0) })
//                }
            } else {
                intertwinedsCount += trad.count * 2
            }
            
            line += trad.count * 2
        }
        
        let uniqueInterwindes = Set(allIntertwineds)
        print(allIntertwineds.count - uniqueInterwindes.count)
        
        print(simps.intersection(uniqueInterwindes))
        print(trads.intersection(uniqueInterwindes))
//        print("\(line) \(intertwinedsCount)")
    }
    
    func intertwineds(trad: String, simp: String) -> [String] {
        var intertwineds = intertwine(bases: Array(zip(trad, simp))).map { String($0) }
        
        if intertwineds.first == trad {
            intertwineds.removeFirst()
        }
        if intertwineds.last == simp {
            intertwineds.removeLast()
        }
        
        return intertwineds
    }
    
    func testSyllableRegex() throws {
        let syllableGroup = "([a-z|1-6]+)"
        let manDukGroup = "<([^<>]+)>"
        let baakDukGroup = "\\(([^()]+)\\)"
        
        let regexPattern = "\(syllableGroup)|\(manDukGroup)\(syllableGroup)?(?:\(baakDukGroup)\(syllableGroup)?)?"
        let regex = try NSRegularExpression(pattern: regexPattern)
        
        let str1 = "abc1|efd2"
        let matches1 = regex.matches(in: str1, range: NSRange(location: 0, length: str1.count))
        print(matches1)
        
        let str2 = "<abc1>cde1|efd2"
        let matches2 = regex.matches(in: str2, range: NSRange(location: 0, length: str2.count))
        print(matches2.map { match in (0..<match.numberOfRanges).map { match.range(at: $0) } })
        
        let str3 = "<abc1>cde1|efd2(xyz4|pxs1)"
        let matches3 = regex.matches(in: str3, range: NSRange(location: 0, length: str3.count))
        print(matches3.map { match in (0..<match.numberOfRanges).map { match.range(at: $0) } })
        
        let str4 = "<abc1>cde1|efd2(xyz4|pxs1)sfk2|dsfk3"
        let matches4 = regex.matches(in: str4, range: NSRange(location: 0, length: str4.count))
        print(matches4.map { match in (0..<match.numberOfRanges).map { match.range(at: $0) } })
    }
    
    func testSyllableResolver() throws {
        let comp1 = "cing1"
        print(try SyllableResolver.convert(component: comp1))
        
        let comp2 = "<cing1>(ceng1)"
        print(try SyllableResolver.convert(component: comp2))
        
        let comp3 = "<cing1|cing2>cing4(ceng1)"
        print(try SyllableResolver.convert(component: comp3))
        
        let comp4 = "cing1(ceng1)"
        print(try SyllableResolver.convert(component: comp4))
    }
    
    class Pronunciation {
        typealias Deltas = [(pos: Int, changes: CantoSyllable)]
        
        private let basicForm: [CantoSyllable]
        private let literaries: [Deltas]
        private let literarySandhis: [Deltas]
        private let colloquials: [Deltas]
        private let colloquialSandhis: [Deltas]
        
        init(basicForm: [CantoSyllable],
             literaries: [Deltas] = [],
             literarySandhis: [Deltas] = [],
             colloquials: [Deltas] = [],
             colloquialSandhis: [Deltas] = []) {
            self.basicForm = basicForm
            self.literaries = literaries
            self.literarySandhis = literarySandhis
            self.colloquials = colloquials
            self.colloquialSandhis = colloquialSandhis
        }
        
        enum Nature {
            case literary
            case literarySandhi
            case colloquial
            case colloquialSandhi
        }
        
        private func transform(_ deltas: Deltas) -> [CantoSyllable] {
            return deltas.reduce(into: basicForm) { $0[$1.pos] = $1.changes }
        }
        
        func quality(of other: [CantoSyllable]) -> Nature? {
            if literaryForms.contains(other) {
                return .literary
            }
            
            if literarySandhiForms.contains(other) {
                return .literarySandhi
            }
            
            if colloquialForms.contains(other) {
                return .colloquial
            }
            if colloquailSandhiForms.contains(other) {
                return .colloquialSandhi
            }
            
            return nil
        }
        
        private(set) lazy var literaryForms = [basicForm] + literaries.map(transform)
        private(set) lazy var literarySandhiForms = literarySandhis.map(transform)
        private(set) lazy var colloquialForms = colloquials.map(transform)
        private(set) lazy var colloquailSandhiForms = colloquialSandhis.map(transform)
    }
    
    struct SyllableResolver {
        static let syllableGroup = "([a-z|1-6]+)"
        static let manDukGroup = "<([^<>]+)>"
        static let baakDukGroup = "\\(([^()]+)\\)"
        static let regexPattern = "(?:\(syllableGroup)|\(manDukGroup)\(syllableGroup)?)(?:\(baakDukGroup)\(syllableGroup)?)?"
        static let regex = try! NSRegularExpression(pattern: regexPattern)
        
//        static func convert(cantoString: String) throws -> Pronunciation {
//            typealias Deltas = Pronunciation.Deltas
//
//            let (normal, literaries, literarySandhis, colloquials, colloquialSandhis): ([CantoSyllable], [Deltas], [Deltas], [Deltas], [Deltas]) = try cantoString.split(separator: " ").map {
//                try convert(component: String($0))
//                }.enumerated().reduce(into: ([], [], [], [], [])) {
//                    $0.0.append($1.element.normal)
//
//                    for variant in $1.element.variants {
//                        let delta = ($1.offset, variant.syllables)
//
//                        switch variant.nature {
//                        case .literary: $0.1.append(delta)
//                        case .literarySandhi: $0.2.append(delta)
//                        case .colloquial: $0.3.append(delta)
//                        case .colloquialSandhi: $0.4.append(delta)
//                        }
//                    }
//            }
//
//            return pronunciations
//        }
        
        static func split(in range: NSRange, strIdx: inout StrIdx) throws -> [CantoSyllable] {
            let range = strIdx.index(moveTo: range.location)..<strIdx.index(offsetBy: range.length)
            return try split(strIdx.text[range])
        }
        
        static func split<S>(_ segment: S) throws -> [CantoSyllable] where S : StringProtocol {
            return try segment.split(separator: "|").map {
                let str = String($0)
                guard let syllable = CantoSyllable(jyutPing: str) else {
                    throw Error(component: str)
                }
                return syllable
            }
        }
        
        typealias Variant = (syllables: [CantoSyllable], nature: Pronunciation.Nature)
        
        static func convert(component: String) throws -> (normal: CantoSyllable, variants: [Variant]) {
            if let syllable = CantoSyllable(jyutPing: component) {
                return (syllable, [])
            }

            let matches = regex.matches(in: component, range: NSRange(location: 0, length: component.count))
            guard matches.count == 1 else {
                throw Error(component: component)
            }

            let match = matches[0]

            var strIdx = StrIdx(text: component)
            var variants = [Variant]()
            
            func handleColloquials() throws {
                let colloquial = match.range(at: 4)
                if colloquial.location != NSNotFound {
                    let colloquialSyllables = try split(in: colloquial, strIdx: &strIdx)
                    variants.append((colloquialSyllables, .colloquial))
                }
                
                let colloquialSandhi = match.range(at: 5)
                if colloquialSandhi.location != NSNotFound {
                    let colloquialSandhiSyllables = try split(in: colloquialSandhi, strIdx: &strIdx)
                    variants.append((colloquialSandhiSyllables, .colloquialSandhi))
                }
            }

            let mainLiterary = match.range(at: 1)
            guard mainLiterary.location == NSNotFound else {
                let syllables = try split(in: mainLiterary, strIdx: &strIdx)
                let normal = syllables[0]
                
                if syllables.count > 1 {
                    variants.append((Array(syllables[1...]), .literary))
                }
                
                try handleColloquials()
                
                return (normal, variants)
            }
            
            let literary = match.range(at: 2)
            let literarySyllables = try split(in: literary, strIdx: &strIdx)
            
            let normal = literarySyllables[0]
            
            if literarySyllables.count > 1 {
                variants.append((Array(literarySyllables[1...]), .literary))
            }
            
            let literarySandhi = match.range(at: 3)
            if literarySandhi.location != NSNotFound {
                let literarySandhiSyllables = try split(in: literarySandhi, strIdx: &strIdx)
                variants.append((literarySandhiSyllables, .literarySandhi))
            }
            
            try handleColloquials()
            
            return (normal, variants)
        }
        
        struct Error : Swift.Error {
            let component: String
        }
    }
    
    func testGenerateCCCantoDictionary() throws {
        guard let streamReader = ccCantoReader() else {
            return
        }
        
        typealias CantoTermEntry = TermEntry<CantoSyllable>
        
        var tradToTermEntries = [CantoTermEntry : CantoTermEntry]()
        var simpToPronunications = [String : Set<CantoTermEntry>]()
        var termToVariants = [CantoTermEntry : [[(Character, Character)]]]()
        
        streamReader.forEach {
            let threeComponents = $0.split(separator: " ", maxSplits: 2)
            
            let trad = String(threeComponents[0])
            let simp = String(threeComponents[1])
            
            let pronunciations = threeComponents[2]
            let endOfMando = pronunciations.firstIndex(of: "]")!
            
            let startOfCanto = pronunciations[endOfMando...].firstIndex(of: "{")!
            let endOfCanto = pronunciations[startOfCanto...].firstIndex(of: "}")!
            let canto = pronunciations[startOfCanto..<endOfCanto].dropFirst().split(separator: " ")
            
            //            - TODO:
            if canto.count != trad.count {
                return
            }
            
            var pronunciation = [CantoSyllable]()
            let dummyEntry = CantoTermEntry(trad: trad, simp: simp)
            
            if let termEntry = tradToTermEntries[dummyEntry],
                !termEntry.offsetPairs.isEmpty {
                var startIdx = 0
                var pureSyllableStrings = [Substring]()
                for (_, sOffset) in termEntry.offsetPairs {
                    pureSyllableStrings += canto[startIdx..<sOffset.startIndex]
                    startIdx = sOffset.endIndex
                }
                
                pronunciation.reserveCapacity(pureSyllableStrings.count)
                for syllableString in pureSyllableStrings {
                    guard let syllable = Syllable(jyutPing: String(syllableString)) else {
//                        fatalError(String(syllableString))
                        print(syllableString)
                        return
                    }
                    pronunciation.append(syllable)
                }
                
                tradToTermEntries[dummyEntry]?.insert(pronunciation: pronunciation)
            } else {
                var offsetPairs = [(Range<Int>, Range<Int>)]()
                var silentCount = 0
                
                for (idx, syllableString) in canto.enumerated() {
                    switch syllableString {
                    case ",", "，", "、":
                        offsetPairs.append((idx..<idx+1, idx-silentCount..<idx-silentCount+1))
                        silentCount += 1
                        continue
                    default: break
                    }
                    
                    guard let syllable = Syllable(jyutPing: String(syllableString)) else {
//                        fatalError(String(syllableString))
                        print(syllableString)
                        return
                    }
                    
                    pronunciation.append(syllable)
                }
                
                if let _ = tradToTermEntries[dummyEntry]?.insert(pronunciation: pronunciation) {
                } else {
                    tradToTermEntries[dummyEntry] = CantoTermEntry(trad: trad, simp: simp, pronunciations: [pronunciation], offsetPairs: offsetPairs)
                }
            }
            
            var itr = pronunciations[endOfCanto...].dropFirst().makeIterator()
            var variantMap = [(Character, Character)]()
            var key: Character?
            
            while let char = itr.next() {
                switch char {
                case " ": continue
                case "A", "H", "h":
                    termToVariants[dummyEntry, default: []].append(variantMap)
                    variantMap.removeAll()
                default:
                    if let aKey = key {
                        variantMap.append((aKey, char))
                        key = nil
                    } else {
                        key = char
                    }
                }
            }
            
            simpToPronunications[simp, default: []].insert(dummyEntry)
        }
        
        let sortedTermEntries = tradToTermEntries.values.sorted()
        
        var _intertwinedToIndices = [String : [Int]]()
        _intertwinedToIndices.reserveCapacity(tradToTermEntries.count)
        
        var _tradToIndices = [String : [Int]]()
        _tradToIndices.reserveCapacity(tradToTermEntries.count)
        
        let (tradToIndices, intertwinedToIndices) = sortedTermEntries.enumerated().reduce(into: (_tradToIndices, _intertwinedToIndices)) {
            $0.0[$1.element.trad, default: []].append($1.offset)
            
            for intertwined in intertwineds(trad: $1.element.trad, simp: $1.element.simp) {
                if $0.0[intertwined] == nil {
                    $0.1[intertwined, default: []].append($1.offset)
                } else {
                    $0.0[intertwined]?.append($1.offset)                    
                }
            }
            
            if let variantMaps = termToVariants[$1.element] {
                for variantMap in variantMaps {
                    let newTrad = variantMap.reduce($1.element.trad) {
                        $0.replacingOccurrences(of: String($1.0), with: String($1.1))
                    }
                    
                    $0.0[newTrad, default: []].append($1.offset)
                    
                    let changeds = variantMap.map { $0.1 }
                    
                    for intertwined in intertwineds(trad: newTrad, simp: $1.element.simp) where (intertwined.contains { changeds.contains($0) }) {
                        $0.1[intertwined, default: []].append($1.offset)
                    }
                }
            }
        }
        
//        var _simpToIndices = [String : [Int]]()
//        _simpToIndices.reserveCapacity(simpToPronunications.count)
        
        let simpToIndices = simpToPronunications.reduce(into: tradToIndices) {
            let indices = $1.value.map {
                sortedTermEntries.exactBinarySearch(by: $0)!
            }
            if let oldIndices = $0[$1.key] {
                $0[$1.key] = oldIndices + indices.filter { !oldIndices.contains($0) }
            } else {
                $0[$1.key] = indices
            }
        }
        
        let rootUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/CantoDict")
//        let entriesData = try JSONEncoder().encode(sortedTermEntries.map { $0.jsonStr })
//        try entriesData.write(to: rootUrl.appendingPathComponent("entries.json"))
        
//        let tradIndicesData = try JSONEncoder().encode(tradToIndices)
//        try tradIndicesData.write(to: rootUrl.appendingPathComponent("tradIndices.json"))
//
        let simpIndicesData = try JSONEncoder().encode(simpToIndices)
        try simpIndicesData.write(to: rootUrl.appendingPathComponent("simpIndices.json"))

        let intertwinedToIndicesData = try JSONEncoder().encode(intertwinedToIndices)
        try intertwinedToIndicesData.write(to: rootUrl.appendingPathComponent("intertwinedIndices.json"))
        
        let allIndices = (Array(simpToIndices) + Array(intertwinedToIndices)).sorted { $0.key < $1.key }

        let dictImpl = DictionaryImpl(keyIndicesProvider: allIndices, values: sortedTermEntries)
        let data = try dictImpl.serializedData()
        try data.write(to: rootUrl.appendingPathComponent("dictImpl.pb"))
    }
    
    func testDictImpl() throws {
        let rootUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/CantoDict")
        let data = try Data(contentsOf: rootUrl.appendingPathComponent("dictImpl.pb"))
        let dictImpl = try DictionaryImpl<TermEntry<CantoSyllable>>(serializedData: data)
        
        let text = "噪声汙染汙水处理廠辐射警吿标志周期进接服务周报滙豐佔领殷忧啓圣吸煙区恆生衞生官员店鋪"
//        let text = "周报"
        
        let results = dictImpl.convertToSyllables(from: text, remainsNone: true, tcsc: .all(hktw: .hk), variantTransform: .alias)
        print(results)
    }
    
    func testHKTW() {
//        let hktw = HKTW.hk
//        print(hktw.convertForSearch(text: "羣峯裏麪宂牀汙"))
//        print(hktw.substitutions(text: "羣峯裏麪宂牀污"))
    }
    
    func testTermLengths() {
        guard let streamReader = ccCantoReader() else {
            return
        }
        
        var termLengths = [Int : Int]()
        
        var duplicatedSimps = [String : Int]()
        
        streamReader.forEach {
            let threeComponents = $0.split(separator: " ", maxSplits: 2)
            
            let trad = String(threeComponents[0])
            let simp = String(threeComponents[1])
            
            termLengths[trad.count, default: 0] += 1
            duplicatedSimps[simp, default: 0] += 1
        }
        
        print(termLengths.sorted { $0.key < $1.key })
        
        let dupFreqs = duplicatedSimps.reduce(into: [Int : Int]()) {
            if $1.value > 1 {
                $0[$1.key.count, default: 0] += 1
            }
        }
        
        print(dupFreqs.sorted { $0.key < $1.key })
    }
    
    func testDuplicatedTerms() {
        guard let streamReader = ccCantoReader() else {
            return
        }
        
        var trads = Set<String>()
        var simps = Set<String>()
        
        streamReader.forEach {
            let threeComponents = $0.split(separator: " ", maxSplits: 2)
            let trad = String(threeComponents[0])
            let simp = String(threeComponents[1])
            
            trads.insert(trad)
            if trad != simp {
                simps.insert(simp)
            }
        }
        
        print(trads.intersection(simps))
    }
    
    func testNto1Sound() throws {
        guard let streamReader = ccCantoReader() else {
            return
        }
        
        var allCharacters = Set<Character>()
        
        streamReader.forEach {
            for character in $0 {
                if character == " " {
                    return
                }
                allCharacters.insert(character)
            }
        }
        
        let poly = try createPolyUSource()
        print(poly.filter { $0.value.count > 1 && allCharacters.contains($0.key.first!) }.sorted { $0.key < $1.key })
    }
    
    func testWellFormedSyllables() {
        let path = "/Users/Resonance/Downloads/cccedict-canto-readings-150923.txt"
        guard let streamReader = StreamReader(path: path) else {
            return
        }
        
        streamReader.dropFirst(8).forEach {
            let threeComponents = $0.split(separator: " ", maxSplits: 2)
            
            let pronunciations = threeComponents[2]
            let endOfMando = pronunciations.firstIndex(of: "]")!
            let mandoString = pronunciations.dropFirst()[..<endOfMando]
            var mando = mandoString.split(separator: " ")
            
            let startOfCanto = pronunciations[endOfMando...].firstIndex(of: "{")!
            let endOfCanto = pronunciations[startOfCanto...].firstIndex(of: "}")!
            let canto = pronunciations[startOfCanto..<endOfCanto].dropFirst().split(separator: " ")
            
            if mando.count != canto.count {
                mando.removeAll()
                var startIdx = mandoString.startIndex
                let numChars: ClosedRange<Character> = "1"..."5"
                while let endIdx = (mandoString[startIdx...].firstIndex { numChars.contains($0) }) {
                    mando.append(mandoString[startIdx...endIdx])
                    startIdx = mandoString.index(after: endIdx)
                }
            }
            
            if mando.count != canto.count || mando.count != threeComponents[0].count {
                XCTFail($0)
            }
        }
    }
    
    func testFindNotInOrder() {
        let path = "/Users/Resonance/Downloads/cccedict-canto-readings-150923.txt"
        guard let streamReader = StreamReader(path: path) else {
            return
        }
        
        var line2Start: Character?
        var line1Start: Character?
        
        streamReader.dropFirst(8).forEach {
            if let line2Start = line2Start,
                let line1Start = line1Start,
            line2Start == $0.first && line2Start != line1Start {
                print($0)
            }
            
            if line2Start == nil {
                line2Start = $0.first
            } else if line1Start == nil {
                line1Start = $0.first
            } else {
                line2Start = line1Start
                line1Start = $0.first
            }
        }
    }
    
    func testCCCanto() {
        let character: Character = "不"
//        let pinyin = "zhong1"
        let jyut = "bat1"
        
        ccCantoReader()?.forEach {
            let threeComponents = $0.split(separator: " ", maxSplits: 2)
            let chars = Array(threeComponents[0])
            let idx = chars.firstIndex(of: character)
            guard idx != nil else { return }
            
            let pronunciations = threeComponents[2]
            let endOfMando = pronunciations.firstIndex(of: "]")!
//            let mando = pronunciations.dropFirst()[..<endOfMando].split(separator: " ")
            
            let startOfCanto = pronunciations[endOfMando...].firstIndex(of: "{")!
            let endOfCanto = pronunciations[startOfCanto...].firstIndex(of: "}")!
            let canto = pronunciations[startOfCanto..<endOfCanto].dropFirst().split(separator: " ")
            
            for i in idx!..<chars.count where chars[i] == character {
                if canto[i].lowercased() != jyut
//                    || mando[i].lowercased() != pinyin
                    {
                    XCTFail("\(threeComponents[0]), \(canto) \(canto[i].lowercased())")
                }
            }
        }
    }
    
    private let rawJsonURL = URL(fileURLWithPath: "/Users/Resonance/Desktop/raw_kaifangcidian.json")
    private let keyNormalizedJsonUrl = URL(fileURLWithPath: "/Users/Resonance/Desktop/keynormalized_kaifangcidian.json")
    
//    func testGetKeyValuesFromJson() throws {
//        func getCount(phoneticInfo: PhoneticInfo) -> Int {
//            let offsetPairs = phoneticInfo.offsetPairs
//            let pronunciations = phoneticInfo.pronunciations
//
//            if offsetPairs.isEmpty {
//                return pronunciations.isEmpty ? 1 : pronunciations[0].count
//            }
//            let difference = offsetPairs.reduce(0) { $0 + $1.termOffset.count - $1.syllableOffset.count }
//            return pronunciations[0].count + difference
//        }
//
//        do {
//            let keyValues = try CantoDictionary.getKeyValuesFromJson(url: keyNormalizedJsonUrl)
//
//            for (key, value) in keyValues {
//                XCTAssertEqual(getCount(phoneticInfo: value), key.count, "\(key) \(value)")
//                if value.offsetPairs.count > 0 {
//                    print(value.dissect(term: key))
//                }
//            }
//        } catch {
//            print(error)
//        }
//    }
    
    func testJsonConversion() throws {
        let data = try Data(contentsOf: keyNormalizedJsonUrl)
        guard let dict = try JSONSerialization.jsonObject(with: data) as? [String : [[String : Any]]] else {
            return
        }
        
        for (key, value) in dict where value.count > 1 {
            print(key, value)
        }
    }
    
    func testNormalisedJson() throws {
        let data = try Data(contentsOf: keyNormalizedJsonUrl)
        guard let dict = try JSONSerialization.jsonObject(with: data) as? [String : [[String : Any]]] else {
            return
        }
        
        let polyUSource = try createPolyUSource()
        
        outer:
        for (key, value) in dict {
            let componentCount = key.split(separator: " ").count
            let syllables = value[0]["syllables"] as! [String]
            if componentCount != syllables.count {
                print(key, syllables)
                continue
            }
            
            for (charGroup, syllableGroup) in zip(key.split(separator: " "), syllables) {
                if charGroup.count > 1 { continue }
                if syllableGroup.split(separator: " ").count > 1 { continue }
                
                guard let syllable = Syllable(jyutPing9: syllableGroup) else {
                    XCTFail("invalid syllable: \(syllableGroup)")
                    continue
                }
                
                let char = String(charGroup)
                
                guard let polyUSyllables = polyUSource[char] else {
                    XCTFail("word: \(key), syllables: \(syllables), char: \(char)")
                    continue outer
                }
                XCTAssertTrue(polyUSyllables.contains(syllable), "word: \(key) char: \(char) polyUSyllables: \(polyUSyllables.map { "\($0)" }) syllable: \(syllable)")
            }
        }
    }
    
    func testNormaliseRawJson() throws {
        let data = try Data(contentsOf: rawJsonURL)
        guard let dict = try JSONSerialization.jsonObject(with: data) as? [String : [[String : Any]]] else {
            return
        }
        
        var keyNormalizedDict = [String : [[String : Any]]]()
        keyNormalizedDict.reserveCapacity(dict.count)
        
        dict.forEach {
            var expandedKey = [String]()
            var multiComponent = ""
            for c in $0.key {
                if c.unicodeScalars.first!.isASCII {
                    multiComponent.append(c)
                } else {
                    if !multiComponent.isEmpty {
                        expandedKey.append(multiComponent)
                        multiComponent = ""
                    }
                    expandedKey.append(String(c))
                }
            }
            
            if !multiComponent.isEmpty {
                expandedKey.append(multiComponent)
            }
            
            keyNormalizedDict[expandedKey.joined(separator: " ")] = $0.value
        }
        
        let normalizedData = try JSONSerialization.data(withJSONObject: keyNormalizedDict)
        try normalizedData.write(to: keyNormalizedJsonUrl)
    }
    
    func testCrapToRawJson() throws {
        let dict = try getSomething()
        let data = try JSONSerialization.data(withJSONObject: dict)
        try data.write(to: rawJsonURL)
    }
    
    private func getSomething() throws -> [String : [[String : Any]]] {
        let jsonPath = "/Users/Resonance/Downloads/cidian_zhyue-kfcd/cidian_zhyue-ft-kfcd-jy-2018620.txt"
        let url = URL(fileURLWithPath: jsonPath)
        
        let data = try Data(contentsOf: url)
        let entries = try JSONDecoder().decode([String].self, from: data)
        
        var results = [String : [[String : Any]]]()
        results.reserveCapacity(entries.count / 3)
        
        var word = entries[0]
        var oldWord = word
        var syllables = [String]()
        var definition: String?
        
        for entry in entries.dropFirst() {
            switch entry.last! {
            case "1"..."9":
                syllables.append(entry)
                definition = nil
            default:
                if !syllables.isEmpty {
                    let content = ["syllables" : syllables]
                    results[word, default: []].append(content)
                    syllables.removeAll()
                    oldWord = word
                } else {
                    if let _definition = definition {
                        results[oldWord]![results[oldWord]!.count - 1]["def"] = _definition
//                        word = entry
                        definition = nil
                    }
                }
                
                definition = entry
                word = entry
            }
        }
        
        return results
    }

//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        let cidianKVs = try CantoDictionary.getKeyValuesFromCidian()
//        let polyUSource = try createPolyUSource()
//
//        outer:
//        for (word, phoneticInfo) in cidianKVs {
//            let word = word.firstIndex(of: "，").map { var word = word; word.remove(at: $0); return word } ?? word
//            XCTAssertEqual(word.count, phoneticInfo.pronunciations.count, "word: \(word), syllables: \(phoneticInfo.pronunciations)")
//            if word.count != phoneticInfo.pronunciations.count { continue }
//
//            for (char, syllable) in zip(word, phoneticInfo.pronunciations[0]) {
//                let char = String(char)
//                guard let polyUSyllables = polyUSource[char] else {
//                    XCTFail("word: \(word), syllables: \(phoneticInfo.pronunciations), char: \(char)")
//                    continue outer
//                }
//                XCTAssertTrue(polyUSyllables.contains(phoneticInfo.pronunciations[0][0]), "word: \(word) char: \(char) polyUSyllables: \(polyUSyllables) syllable: \(syllable)")
//            }
//
//        }
//    }

    private func createPolyUSource() throws -> [String : [CantoSyllable]] {
        let url = URL(fileURLWithPath: "/Users/Resonance/Documents/Developer/ChineseInputDictionary/common/Assets/Data/charToJyutPing.json")
        let data = try Data(contentsOf: url)
        let dict = try JSONDecoder().decode([String : [String]].self, from: data)
        return dict.mapValues { $0.compactMap { Syllable(jyutPing: $0) } }
    }
    
    struct AssertError : Error {
        let message: String
    }
}

extension BidirectionalCollection where Element : Comparable {
    func binarySearch(by item: Element) -> BinarySearchResult<Index> {
        if first == item {
            return .found(index: startIndex)
        }
        
        var lowerIndex = startIndex
        var upperIndex = index(before: endIndex)
        
        while true {
            if lowerIndex > upperIndex {
                return .notFound(upperBound: lowerIndex)
            }
            let offset = distance(from: lowerIndex, to: upperIndex) >> 1
            let currentIndex = index(lowerIndex, offsetBy: offset)
            if self[currentIndex] == item {
                return .found(index: currentIndex)
            } else {
                if self[currentIndex] > item {
                    upperIndex = index(before: currentIndex)
                } else {
                    lowerIndex = index(after: currentIndex)
                }
            }
        }
    }
    
    func exactBinarySearch(by item: Element) -> Index? {
        switch binarySearch(by: item) {
        case .found(let index): return index
        default: return nil
        }
    }
}

enum BinarySearchResult<Index> {
    case found(index: Index)
    case notFound(upperBound: Index)
}
