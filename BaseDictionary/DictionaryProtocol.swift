//
//  DictionaryProtocol.swift
//  BaseDictionary
//
//  Created by Resonance on 8/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//
import DnA

public protocol DictionaryProtocol : Serializable {
    typealias Converted = (termEntries: [[P]], terms: [Substring])
    associatedtype P : Syllables
    
    subscript(key: String) -> [P]? { get }
    func convertToSyllables(from text: String, remainsNone: Bool, tcsc: TCSC, variantTransform: VariantTransform) -> Converted
}

public struct VariantTransform: OptionSet {
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
    
    public static let alias = VariantTransform(rawValue: 1 << 0)
    public static let inherited = VariantTransform(rawValue: 1 << 1)
}

public enum TCSC {
    case all(hktw: HKTW)
    case tc(hktw: HKTW)
    case sc
    
    func convertForSearch(text: String) -> String {
        switch self {
        case .all(let hktw), .tc(let hktw):
            return hktw.convertForSearch(text: text)
        default:
            return text
        }
    }
}

public enum HKTW {
    static let hkToTw = try! BaseDictionary.characterMaps(url: URL(fileURLWithPath: "/Users/Resonance/Downloads/CCCanto/HK-TW"))
    static let twToHk = try! BaseDictionary.characterPairs(url: URL(fileURLWithPath: "/Users/Resonance/Downloads/CCCanto/TW-HK"))
    
    case hk
    case tw
    
    enum Format {
        case display(HKTW?)
        case search
    }
    
    func convertForSearch(text: String) -> String {
        return substitutions(text: text, to: .search).reduce(into: text) { $0.replace(at: $1.0, with: $1.1) }
    }
    
    func substitutions(text: String, to: Format = .display(nil)) -> [(String.Index, Character)] {
        var substitutions = [(String.Index, Character)]()
        var startIdx = text.startIndex
        
        let characterMap: CharacterMap
        switch to {
        case .search:
            characterMap = HKTW.hkToTw.0.merging(HKTW.twToHk.0) { a, b in a }
        case .display(let hktw):
            switch hktw ?? self {
            case .hk: characterMap = HKTW.hkToTw.1
            case .tw: characterMap = HKTW.hkToTw.0.merging(HKTW.twToHk.1) { a, b in a }
            }
        }
        
        while startIdx < text.endIndex {
            if let convertedChar = characterMap[text[startIdx]] {
                substitutions.append((startIdx, convertedChar))
            }
            text.formIndex(after: &startIdx)
        }
        
        return substitutions
    }
}

extension String {
    mutating func replace(at idx: Index, with character: Element) {
        replaceSubrange(idx...idx, with: [character])
    }
}

typealias CharacterMap = [Character : Character]
typealias CharacterPairs = [(Character, Character)]

func characterMaps(sourceName: String) throws -> (CharacterMap, CharacterMap)? {
    guard let url = Bundle.main.url(forResource: sourceName, withExtension: "txt") else { return nil }
    return try characterMaps(url: url)
}

func characterPairs(url: URL) throws -> (CharacterPairs, CharacterPairs) {
    let text = try String(contentsOf: url)
    return text.split(separator: "\n").drop { $0.first == "#" }.reduce(into: ([], [])) {
        var itr = $1.makeIterator()
        let first = itr.next()!
        itr.next()
        let second = itr.next()!
        
        $0.0.append((first, second))
        $0.1.append((second, first))
    }
}

func characterMaps(url: URL) throws -> (CharacterMap, CharacterMap) {
    let pairs = try characterPairs(url: url)
    return (Dictionary(pairs.0) { a, b in a }, Dictionary(pairs.0) { a, b in a })
}
