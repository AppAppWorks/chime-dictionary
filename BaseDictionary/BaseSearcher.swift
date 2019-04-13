//
//  BaseSearcher.swift
//  Pinyin
//
//  Created by Resonance on 30/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

open class BaseSearcher<V> {
    public let text: String
    public internal(set) var offset = 0
    
    public init<S>(text: S) where S : Sequence, S.Element == Character {
        self.text = String(text)
    }
    
    open func next() -> (String, V?)? {
        fatalError("unimplemented method")
    }
}
