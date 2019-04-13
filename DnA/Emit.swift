//
//  Emit.swift
//  DnA
//
//  Created by Resonance on 26/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

public struct Emit : Intervalable {
    public let range: ClosedRange<Int>
    public let keyword: String
}

public extension Emit {
    public var description: String {
        return "\(range)=\(keyword)"
    }
}
