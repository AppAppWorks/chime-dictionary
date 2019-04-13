//
//  DictionaryProtocol.swift
//  BaseDictionary
//
//  Created by Resonance on 8/1/2019.
//  Copyright © 2019 AppAppWorks. All rights reserved.
//
import DnA

public protocol DictionaryProtocol : Serializable {
    typealias Converted = (phoneticInfos: [P], terms: [Substring])
    associatedtype P : Syllables
    
    subscript(key: String) -> P? { get }
    func convertToSyllables(from text: String, remainsNone: Bool) -> Converted
}
