//
//  SumOfProductsTests.swift
//  SumOfProductsTests
//
//  Created by 이동건 on 2021/09/14.
//

import XCTest
@testable import XCTestDemo

class SumOfProductsTests: XCTestCase {

    func testSumOfEmptyArrayIsZero() {
    
        //scaffold
        
        let category = "books"
        let products = [Product]()
        
        let sum = sumOf(products, withCategory: category)
        
        XCTAssertEqual(sum, 0)
    }
    
    
    
    func testSumOfOneItemIsItemPrice() {
        let category = "books"
        let products = [Product(category: category, price: 3)]
        
        let sum = sumOf(products, withCategory: category)
        
        XCTAssertEqual(sum, 3)
        
    }
    
    
    func testSumIsSumOfItemsPricesForGivenCategory() {
        
        let category = "books"
        let products = [
            Product(category: category, price: 3),
            Product(category: "movies", price: 2),
            Product(category: category, price: 1)
        ]
        
        let sum = sumOf(products, withCategory: category)
        
        XCTAssertEqual(sum, 4)
    }

}
