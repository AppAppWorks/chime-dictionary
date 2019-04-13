//
//  StringDictionary.swift
//  Pinyin
//
//  Created by Resonance on 20/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import Foundation

public class StringDictionary : SimpleDictionary<String> {
    let separator: Character
    
    public init(separator: Character = "=") {
        self.separator = separator
    }
    
    override func onGenerateEntry<S>(line: S) -> (key: String, value: String)? where S : StringProtocol {
        let params = line.split(separator: separator, maxSplits: 2, omittingEmptySubsequences: true)
        if params.count != 2 {
            debugPrint("Error reading line: \(line)")
            return nil
        }
        return (String(params[0]), String(params[1]))
    }
    
    public func reversed() -> StringDictionary {
        let dictionary = StringDictionary(separator: separator)
        entrySet.forEach {
            if let value = $0.value {
                dictionary[value] = $0.key
            }
        }
        return dictionary
    }
}
