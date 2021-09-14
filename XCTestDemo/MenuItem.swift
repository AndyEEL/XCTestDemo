//
//  MenuItem.swift
//  MenuItem
//
//  Created by 이동건 on 2021/09/14.
//

import Foundation
import UIKit

struct MenuItem {
    
    let category: String
    let name: String
    let spicy: Bool
    let price: Double
}

struct MenuSection {
    
    let category: String
    let items: [MenuItem]
    
}

func groupMenuByCategory(_ menu: [MenuItem]) -> [MenuSection] {
    
    return Dictionary(grouping: menu, by: { $0.category })
        .map { key, Value
            in MenuSection(category: key, items: Value)
        }
        .sorted { $0.category > $1.category }
    
}
