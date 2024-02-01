//
//  CheckpointNavigator.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 1.02.2024.
//

import SwiftUI

struct CheckpointNavigator: View {
    var body: some View {
        NavigationSplitView {
            NavigationLink("Temperature Converter", destination: TemperatureConverter())
            NavigationLink("Unique Items", destination: UniqueItems())
            NavigationLink("Fizz Buzz", destination: FizzBuzz())
        } detail: {
            Text("Checkpoint Navigator")
        }
    }
}

#Preview {
    CheckpointNavigator()
}
