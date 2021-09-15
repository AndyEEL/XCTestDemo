//
//  MenuSection.swift
//  MenuSection
//
//  Created by 이동건 on 2021/09/15.
//

import Foundation

struct MenuSection {
    
    let category: String
    let items: [MenuItem]
    
}

extension MenuSection: Equatable {
    static func == (lhs: MenuSection, rhs: MenuSection) -> Bool {
        return true
    }
}

extension MenuSection: Identifiable {
    var id: String { category }
}
