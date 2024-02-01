//
//  FizzBuzz.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 31.01.2024.
//

import SwiftUI

struct FizzBuzz: View {
    @State private var fizzBuzz = FizzBuzzModel(range: 25)
    @State private var tempValue: Int = 2
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Fizz Buzz") {
                    Picker("FizzBuzz", selection: $tempValue) {
                        ForEach(fizzBuzz.fizzBuzzAllValues, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.wheel)
                    .padding(.vertical, -40)
                }
                Section("Buzz") {
                    Picker("Buzz", selection: $tempValue) {
                        ForEach(fizzBuzz.buzz, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.wheel)
                    .padding(.vertical, -40)
                }
                Section("Fizz") {
                    Picker("Fizz", selection: $tempValue) {
                        ForEach(fizzBuzz.fizz, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.wheel)
                    .padding(.vertical, -40)
                }
            }
            .navigationTitle("FizzBuzz")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    FizzBuzz()
}
