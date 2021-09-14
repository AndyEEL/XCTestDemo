//
//  SumOfProducts.swift
//  SumOfProducts
//
//  Created by 이동건 on 2021/09/14.
//

import Foundation


struct Product {
    let category: String
    let price: Double
}

func sumOf(_ products: [Product], withCategory category: String) -> Double{
    
    
    return products
        .filter{$0.category == category}
        .reduce(0.0){$0 + $1.price}
    
}

