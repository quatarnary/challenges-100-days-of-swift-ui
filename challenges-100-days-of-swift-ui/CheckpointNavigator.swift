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
                .padding()
            NavigationLink("Unique Items", destination: UniqueItems())
                .padding()
            NavigationLink("Fizz Buzz", destination: FizzBuzz())
                .padding()
            NavigationLink("Square Root", destination: SquareRoot())
                .padding()
            NavigationLink("Closure Filter Sort Map", destination: ClosureFilterSortMap())
                .padding()
            NavigationLink("Car Struct", destination: Car())
                .padding()
        } detail: {
            Text("Checkpoint Navigator")
        }
    }
}

#Preview {
    CheckpointNavigator()
}
