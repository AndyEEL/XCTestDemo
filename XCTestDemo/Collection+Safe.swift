//
//  Collection+Safae.swift
//  Collection+Safae
//
//  Created by 이동건 on 2021/09/14.
//

import Foundation

extension Collection {
    /// Returns the element at the given index if it is within
    /// range, otherwise nil.
    ///
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

