//
//  MenuList.ViewModelTests.swift
//  MenuList.ViewModelTests
//
//  Created by 이동건 on 2021/09/15.
//
import Combine
import XCTest
@testable import XCTestDemo



class MenuListViewModelTests: XCTestCase {
    
    func testCallsGivenGroupingFunction() throws {
        
        try XCTSkipIf(true, "skipping this for now, keeping it to reuse part of the code later on")
        
        var called = false
        let inputSections = [MenuSection.fixture()]
        let spyClosure: ([MenuItem]) -> [MenuSection] = { items in called = true
            return inputSections
        }
        
        let viewModel = MenuList.ViewModel(menuFetching: MenuFetchingPlaceholder(), menuGrouping: spyClosure)
        let sections = viewModel.sections
        
        // Check that the given closure was called
        XCTAssertTrue(called)
        // Check that the returned value was built with the closure
        XCTAssertEqual(sections, inputSections)
        
  
    

    }
    
    func testWhenFetchingStartsPublishesEmptyMenu() {
        
        let viewModel = MenuList.ViewModel(menuFetching: MenuFetchingPlaceholder())
        
        XCTAssertTrue(viewModel.sections.isEmpty)
        
    }
    
    func testWhenFetchingSucceedsPublishesSectionBuiltFromReceivedMenuAndGivenGroupingClosure() {
        
        var cancellables = Set<AnyCancellable>()
        
        // 1. Arrange the ViewModel and its data source
        var receivedMenu: [MenuItem]?
        let expectedSections = [MenuSection.fixture()]
        let spyClosure: ([MenuItem]) -> [MenuSection] = { items in
            receivedMenu = items
            return expectedSections
        }
        
        // 2. Act on the ViewModel to trigger the update
        let viewModel = MenuList.ViewModel(menuFetching: MenuFetchingPlaceholder(), menuGrouping: spyClosure)
        
        // 3. Assert the expected behavior
        let expectation = XCTestExpectation(description: "Publishes sections built from received menu and given grouping closure")
       
        viewModel
            .$sections
            .dropFirst()
            .sink { value in
                XCTAssertEqual(receivedMenu, menu)
                
                XCTAssertEqual(value, expectedSections)
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        wait(for: [expectation], timeout: 1)
        
        
        
        
    }
    
    func testWhenFetchingFailsPublishesAnError() {}
 
    
}
