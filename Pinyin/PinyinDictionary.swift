//
//  PinyinDictionary.swift
//  Pinyin
//
//  Created by Resonance on 30/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import DnA
import BaseDictionary

public class PinyinDictionary : DictionaryProtocol {
    typealias Result = (String, Syllables)
    
    private let impl: DictionaryImpl<Syllables>
    
    public required init?(serializedData: Data) {
        guard let impl = DictionaryImpl<Syllables>(serializedData: serializedData) else { return nil }
        self.impl = impl
    }
    
    public init?() {
        do {
            let keyValues = try PinyinDictionary.getKeyValues(from: "/Users/Resonance/Documents/HanLP/data/dictionary/pinyin/pinyin.txt")
            impl = DictionaryImpl(keyValuesProvider: keyValues)
        } catch {
            debugPrint(error)
            return nil
        }
    }
    
    static func getKeyValues(from path: String) throws -> [Result] {
        let dictionary = StringDictionary(separator: "=")
        try dictionary.load(path: path)
//        debugPrint("failed to read file \(path), \(error)")
        
        let entrySet = dictionary.entrySet
        var map = [String : Syllables]()
        map.reserveCapacity(entrySet.count)
        
        for entry in entrySet {
            guard let args = entry.value?.split(separator: ",") else { continue }
        
            let pinyinValues = try args.map { arg -> Syllable in
                guard let pinyin = Syllable(pinyin: String(arg)) else {
                    throw SyllableError(syllableName: String(arg))
                }
                return pinyin
            }
                
            map[entry.key] = .china(syllables: pinyinValues)
//            debugPrint("failed to load pinyin dictionary from \(path), illegal entry[\(entry)], error[\(error)]")
        }
        
        return map.sorted { $0.key < $1.key }
    }
    
    public subscript(key: String) -> Syllables? {
        return impl[key]
    }
    
    public func convertToSyllables(from text: String, remainsNone: Bool = true) -> Converted {
        return impl.convertToSyllables(from: text, remainsNone: remainsNone)
    }
}

extension PinyinDictionary {
    public func serializedData() throws -> Data {
        return try impl.serializedData()
    }
}

private struct SyllableError : Error {
    let syllableName: String
}
