//
//  ContentView.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 31.01.2024.
//

/*
 Your goal is to write a Swift playground that:
 
 Creates a constant holding any temperature in Celsius.
 Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
 Prints the result for the user, showing both the Celsius and Fahrenheit values.
*/

import SwiftUI

struct TemperatureConverter: View {
    @State private var tempConverter = TemperatureConverterModel()
    @FocusState private var isCelciusTempFocused: Bool
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Celsius Temperature") {
                    TextField("Celsius", value: $tempConverter.celciusTemp, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($isCelciusTempFocused)
                }
                Section("Fahrenheit Value") {
                    Text(tempConverter.fahrenheitTemp.formatted())
                }
            }
            .navigationTitle("Temperature Converter")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                if isCelciusTempFocused {
                    Button("Done") {
                        isCelciusTempFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    TemperatureConverter()
}
