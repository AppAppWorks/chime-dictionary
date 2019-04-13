//
//  ITrie.swift
//  Pinyin
//
//  Created by Resonance on 19/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import Foundation

public protocol ITrie : Codable {
    associatedtype V
    
    var v: [V?] { get }
    var size: Int { get }
    subscript(key: String) -> V? { get }
    func build<S>(keyValuePairs: S) -> Int where S : Sequence, S.Element == (String, V)
    func contains(key: String) -> Bool
}
