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
        
        @Published var sections: Result<[MenuSection],Error> = .success([])
        
        init(
            menuFetching: MenuFetching,
            menuGrouping: @escaping ([MenuItem]) ->
        [MenuSection] = groupMenuByCategory
        ) {
            
            menuFetching
                .fetchMenu()
                .sink(receiveCompletion: {_ in },
                      receiveValue: { [weak self] value in
                    self?.sections = .success(menuGrouping(value))
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
