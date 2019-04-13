//
//  DnATests.swift
//  DnATests
//
//  Created by Resonance on 23/12/2018.
//  Copyright © 2018 AppAppWorks. All rights reserved.
//

import XCTest
import DnA

class DnATests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        enum A : Int {
            case a
            case b
        }
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let a = [A.a]
        let d = a.withUnsafeBufferPointer {
            Data(buffer: $0)
        }
        
        let b = d.withUnsafeBytes {
            Array(UnsafeBufferPointer<A>(start: $0, count: d.count / MemoryLayout<A>.stride))
        }
        
        XCTAssertEqual(a, b)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testBinarySearch() {
        let arr = "abcedfg"
        let a = arr.binarySearch(by: "c")
        if case let .found(idx) = a {
            print(arr[idx...])
        }
    }
}

enum BinarySearchResult<Index> {
    case found(index: Index)
    case notFound(upperBound: Index)
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
}

extension String : Serializable {
    public func serializedData() throws -> Data {
        if let data = data(using: .utf8) {
            return data
        }
        throw SerializationError()
    }
    
    public init?(serializedData: Data) {
        self.init(data: serializedData, encoding: .utf8)
    }
}

struct SerializationError : Error {
}
