//
//  MenuFetching.swift
//  MenuFetching
//
//  Created by 이동건 on 2021/09/15.
//

import Combine

protocol MenuFetching {
    func fetchMenu() -> AnyPublisher<[MenuItem], Error>
}
