//
//  LeapYearTests.swift
//  LeapYearTests
//
//  Created by 이동건 on 2021/09/13.
//

import XCTest
@testable import XCTestDemo

class LeapYearTests: XCTestCase {

    func testEvenlyDivisibleBy4IsLeap() {
        XCTAssert(isLeap(2020))
        
    }
    
    func testEvenlyDivisibleBy100IsNotLeap() {
        XCTAssertFalse(isLeap(2100))
    }
    
    func testEvenlyDivisibleBy400IsLeap() {
        XCTAssert(isLeap(2000))
    }
    
    func testNotEvenlyDivisibleBy4Or400IsNotLeap() {
        XCTAssertFalse(isLeap(2021))
    }
    
    

}
