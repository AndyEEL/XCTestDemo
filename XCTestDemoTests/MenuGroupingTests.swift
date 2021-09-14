//
//  MenuGroupingTests.swift
//  MenuGroupingTests
//
//  Created by 이동건 on 2021/09/14.
//

import XCTest
@testable import XCTestDemo

class MenuGroupingTests: XCTestCase {

    func testMenuWithManyCategoriesReturnsAsManySectionsInReverseAlphabeticalOrder() {
        
        let menu: [MenuItem] = [
            .fixture(category: "pastas", name: "a pasta"),
            .fixture(category: "drinks", name: "a drink"),
            .fixture(category: "pastas", name: "another pasta"),
            .fixture(category: "desserts", name: "a dessert"),
            
        ]
        
        let sections = groupMenuByCategory(menu)
        
        XCTAssertEqual(sections.count, 3)
        
        XCTAssertEqual(sections[safe: 0]?.category, "pastas")
        XCTAssertEqual(sections[safe: 1]?.category, "drinks")
        XCTAssertEqual(sections[safe: 2]?.category, "desserts")
        
        
    }
    
    func testMenuWithOneCategoryReturnsOneSection() {
        
        let menu = [
            MenuItem.fixture(category: "pastas", name: "name"),
            MenuItem.fixture(category: "pastas", name: "other name")
        ]
        let sections = groupMenuByCategory(menu)
        XCTAssertEqual(sections.count, 1)
        
        let section = try! XCTUnwrap(sections.first)
        
        
        XCTAssertEqual(section.items.count, 2)
        XCTAssertEqual(section.items.first?.name, "name")
        XCTAssertEqual(section.items.last?.name, "other name")
    }
    
    func testEmptyMenuReturnsEmptySections() {
        
        // Arrange the input: an empty menu
        let menu = [MenuItem]()
        
        // Act on the SUT to get the output: the sections array
        let sections = groupMenuByCategory(menu)
        
        // Assert
        XCTAssertTrue(sections.isEmpty)
    }

}
