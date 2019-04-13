//
//  Token.swift
//  DnA
//
//  Created by Resonance on 26/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

public protocol Token : CustomStringConvertible {
    var fragment: String { get }
    var isMatch: Bool { get }
    var emit: Emit? { get }
}

extension Token {
    public var description: String {
        return "fragment/\(isMatch)"
    }
}

public struct FragmentToken : Token {
    public let fragment: String
    
    public let isMatch = false
    
    public let emit: Emit? = nil
    
    public init(fragment: String) {
        self.fragment = fragment
    }
}

public struct MatchToken : Token {
    public let fragment: String
    
    public let emit: Emit?
    
    public let isMatch = true
    
    init(fragment: String, emit: Emit?) {
        self.fragment = fragment
        self.emit = emit
    }
}
