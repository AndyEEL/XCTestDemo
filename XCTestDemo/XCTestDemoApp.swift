//
//  XCTestDemoApp.swift
//  XCTestDemo
//
//  Created by 이동건 on 2021/09/13.
//

import SwiftUI

@main
struct XCTestDemoApp: App {
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MenuList(viewModel: .init(menuFetching: MenuFetchingPlaceholder()))
                    .navigationTitle("Alberto's 🇲🇪")
            }
            
        }
    }
}

let menu: [MenuItem] = [
    
    MenuItem(category: "starters", name: "Caprese Salad", spicy: false, price: 12.0),
    MenuItem(category: "starters", name: "Arancini Balls", spicy: false, price: 11.0),
    MenuItem(category: "pastas", name: "Penne all'Arrabbiata", spicy: true, price: 17.0),
    MenuItem(category: "pastas", name: "Spaghetti Carbonara", spicy: true, price: 18.0),
    MenuItem(category: "drinks", name: "Water", spicy: false, price: 2.0),
    MenuItem(category: "drinks", name: "Red Wine", spicy: false, price: 5.0),
    MenuItem(category: "desserts", name: "Tiramisù", spicy: true, price: 17.0),
    MenuItem(category: "desserts", name: "Crema Catalana", spicy: true, price: 18.0)
]


// TODO: 
//123123
