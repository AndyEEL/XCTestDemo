//
//  MenuList.swift
//  MenuList
//
//  Created by 이동건 on 2021/09/14.
//

import SwiftUI
struct MenuList: View {
    let sections: [MenuSection]
    var body: some View {
        List {
            ForEach(sections) { section in
                Section(header: Text(section.category)) {
                    ForEach(section.items) { item in
                        Text(item.name)
                    }
                }
            }
        }
    }
}

extension MenuItem: Identifiable {
    var id: String { name }
}

extension MenuSection: Identifiable {
    var id: String { category }
}
