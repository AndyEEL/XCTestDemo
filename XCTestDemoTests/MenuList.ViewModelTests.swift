//
//  MenuList.ViewModelTests.swift
//  MenuList.ViewModelTests
//
//  Created by 이동건 on 2021/09/15.
//

import XCTest
@testable import XCTestDemo

class MenuListViewModelTests: XCTestCase {
    
    func testCallsGivenGroupingFunction() {
        
        var called = false
        let inputSections = [MenuSection.fixture()]
        let spyClosure: ([MenuItem]) -> [MenuSection] = { items in called = true
            return inputSections
        }
        
        let viewModel = MenuList.ViewModel(menu: [.fixture()], menuGrouping: spyClosure)
        let sections = viewModel.sections
        
        // Check that the given closure was called
        XCTAssertTrue(called)
        // Check that the returned value was built with the closure
        XCTAssertEqual(sections, inputSections)
        
    }
}
