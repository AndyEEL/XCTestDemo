//
//  MenuFetchingStub.swift
//  MenuFetchingStub
//
//  Created by 이동건 on 2021/09/16.
//
@testable import XCTestDemo

import Combine
import Foundation

class MenuFetchingStub: MenuFetching {
    
    let result: Result<[MenuItem], Error>

    init(returning result: Result<[MenuItem], Error>) {
        self.result = result
    }
    
    func fetchMenu() -> AnyPublisher<[MenuItem], Error> {
        return result.publisher
            .delay(for:0.1, scheduler: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
