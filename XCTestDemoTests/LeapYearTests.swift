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
        
        let year = 2020 // Arange
        let leap = isLeap(year) // Act
        XCTAssertTrue(leap) // Assert
        
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
