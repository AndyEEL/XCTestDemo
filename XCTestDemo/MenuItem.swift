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


extension MenuItem: Equatable {}

extension MenuItem: Identifiable {
    var id: String { name }
}

