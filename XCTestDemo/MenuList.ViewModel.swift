//
//  MenuList.ViewModel.swift
//  MenuList.ViewModel
//
//  Created by 이동건 on 2021/09/15.
//

import Foundation

extension MenuList {
    
    struct ViewModel {
        
        let sections: [MenuSection]
        
        init(
            menu: [MenuItem],
            menuGrouping: @escaping ([MenuItem]) ->
            [MenuSection] = groupMenuByCategory
        ) {
            self.sections = menuGrouping(menu)
        }
        
    }
}

func groupMenuByCategory(_ menu: [MenuItem]) -> [MenuSection] {
    
    return Dictionary(grouping: menu, by: { $0.category })
        .map { key, Value
            in MenuSection(category: key, items: Value)
        }
        .sorted { $0.category > $1.category }
}
