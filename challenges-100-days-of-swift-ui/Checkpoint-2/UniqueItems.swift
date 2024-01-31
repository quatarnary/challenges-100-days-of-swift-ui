//
//  UniqueItems.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 31.01.2024.
//

import SwiftUI

struct UniqueItems: View {
    @State private var array = UniqueItemsModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Original Array") {
                    Text(array.array.joined(separator: " "))
                }
                Section("Item Count") {
                    Text("\(array.itemCount)")
                }
                Section("Unique Item Count") {
                    Text("\(array.uniqueItemCount)")
                }
            }
            .navigationTitle("Unique Item Count")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    UniqueItems()
}
