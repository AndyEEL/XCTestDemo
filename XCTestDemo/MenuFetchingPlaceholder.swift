//
//  MenuFetchingPlaceholder.swift
//  MenuFetchingPlaceholder
//
//  Created by 이동건 on 2021/09/15.
//
import Combine
import Foundation

class MenuFetchingPlaceholder: MenuFetching {
    
    func fetchMenu() -> AnyPublisher<[MenuItem], Error> {
        return Future { $0(.success(menu))}
        .delay(for: 0.5, scheduler: RunLoop.main)
        .eraseToAnyPublisher()
    }
}
