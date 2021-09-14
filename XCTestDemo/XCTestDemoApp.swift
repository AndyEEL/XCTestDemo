//
//  XCTestDemoApp.swift
//  XCTestDemo
//
//  Created by 이동건 on 2021/09/13.
//

import SwiftUI

@main
struct XCTestDemoApp: App {
    
    let menu = [
        MenuItem(category: "starters", name: "Caprese Salad"),
        MenuItem(category: "starters", name: "Arancini Balls"),
        MenuItem(category: "pastas", name: "Penne all'Arrabbiata"),
        MenuItem(category: "pastas", name: "Spaghetti Carbonara"),
        MenuItem(category: "drinks", name: "Water"),
        MenuItem(category: "drinks", name: "Red Wine"),
        MenuItem(category: "desserts", name: "Tiramisù"),
        MenuItem(category: "desserts", name: "Crema Catalana"),
    ]
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MenuList(sections: groupMenuByCategory(menu))
                    .navigationTitle("Alberto's 🌕")
            }
            
        }
    }
}
