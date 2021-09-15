//
//  MenuList.swift
//  MenuList
//
//  Created by 이동건 on 2021/09/14.
//

import SwiftUI
struct MenuList: View {
    
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.sections) { section in
                Section(header: Text(section.category)) {
                    ForEach(section.items) { item in
                        MenuRow(viewModel: .init(item: item))
                    }
                }
            }
        }
    }
}




