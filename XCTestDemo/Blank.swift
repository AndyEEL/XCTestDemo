//
//  Blank.swift
//  Blank
//
//  Created by 이동건 on 2021/09/13.
//

import Foundation

func isLeap(_ year: Int) -> Bool {
    guard year % 400 != 0 else { return true }
    guard year % 100 != 0 else { return false }
    return year % 4 == 0
}


