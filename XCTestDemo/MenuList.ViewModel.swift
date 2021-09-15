//
//  MenuList.ViewModel.swift
//  MenuList.ViewModel
//
//  Created by 이동건 on 2021/09/15.
//

import Foundation

import Combine

extension MenuList {
    
    class ViewModel: ObservableObject {
        
        var cancellables = Set<AnyCancellable>()
        
        @Published private(set) var sections: [MenuSection]
        
        init(
            menuFetching: MenuFetching,
            menuGrouping: @escaping ([MenuItem]) ->
        [MenuSection] = groupMenuByCategory
        ) {
            sections = []
            menuFetching
                .fetchMenu()
                .sink(receiveCompletion: {_ in },
                      receiveValue: { [weak self] value in
                    self?.sections = menuGrouping(value)
                }
                )
                .store(in: &cancellables)
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
