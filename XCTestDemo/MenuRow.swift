//
//  MenuRow.swift
//  MenuRow
//
//  Created by 이동건 on 2021/09/15.
//

import SwiftUI

struct MenuRow: View {
    
    let viewModel: ViewModel
    
    var body: some View {
        Text(viewModel.text)
    }
}


// MenuRow.viewModel.swift

extension MenuRow {
    
    struct ViewModel {
        
        let text: String
        
        init(item: MenuItem) {
            text = item.spicy ? "\(item.name)🌶" : item.name
        }
    }
}
