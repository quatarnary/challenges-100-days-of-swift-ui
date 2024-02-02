//
//  SquareRoot.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 1.02.2024.
//

/*
 The challenge is this: write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:
 
 You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
 You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
 If you can’t find the square root, throw a “no root” error.
 */

import SwiftUI

struct SquareRoot: View {
    @State private var squareRoot = SquareRootModel(number: 10_000)
    var resultSectionName: String {
        squareRoot.customError == SquareRootErrors.noError ? "Root" : "Error"
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Number") {
                    Text("\(squareRoot.number)")
                }
                Section(resultSectionName) {
                    if squareRoot.customError == SquareRootErrors.noError {
                        Text("\(squareRoot.squareRoot)")
                    } else {
                        if squareRoot.customError == SquareRootErrors.outOfRange {
                            Text("The number is out of range")
                        } else if squareRoot.customError == SquareRootErrors.noRoot {
                            Text("There is no integer root for the number")
                        }
                    }
                }
                
            }
            .navigationTitle("Square Root")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SquareRoot()
}
