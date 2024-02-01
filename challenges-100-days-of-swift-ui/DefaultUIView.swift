//
//  DefaultUIView.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 1.02.2024.
//

import SwiftUI

struct DefaultUIView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("") {
                    Text("")
                }
                Section("") {
                    Text("")
                }
                Section("") {
                    Text("")
                }
            }
            .navigationTitle("Checkpoint Name")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    DefaultUIView()
}
