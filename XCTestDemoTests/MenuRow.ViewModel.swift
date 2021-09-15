//
//  MenuRowViewModel.swift
//  MenuRowViewModel
//
//  Created by 이동건 on 2021/09/15.
//

//이거 중요함
import XCTest
@testable import XCTestDemo

class MenuRowViewModelTests: XCTestCase {
    
    func testWhenItemIsNotSpicyTextIsItemNameOnly() {
        
        let item = MenuItem.fixture(name: "name", spicy: false)
        let viewModel = MenuRow.ViewModel(item: item)
        
        XCTAssertEqual(viewModel.text, "name")
        
        
    }
    
    func testWhenItemIsSpicyTextIsItemNameWithChiliEmoji() {
        
        let item = MenuItem.fixture(name: "name", spicy: true)
        let viewModel = MenuRow.ViewModel(item: item)
        
        XCTAssertEqual(viewModel.text, "name🌶")
    }
}
