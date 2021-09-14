//
//  MenuItem+Fixture.swift
//  MenuItem+Fixture
//
//  Created by 이동건 on 2021/09/14.
//


@testable import XCTestDemo

extension MenuItem {
    
    static func fixture(
        category: String = "category",
        name: String = "name",
        spicy: Bool = false,
        price: Double = 0.0
    ) -> MenuItem {
        MenuItem(category: category, name: name, spicy: spicy, price: price)
    }
}

extension MenuSection {
    
    static func fixture(
        category: String = "category",
        items: [MenuItem] = [.fixture()]
    ) -> MenuSection {
        return MenuSection(category: category, items: items)
    }
    
}
