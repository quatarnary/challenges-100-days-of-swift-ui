//
//  RandomItemFromArray.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 8.02.2024.
//

/*
 Your challenge is this: write a function that accepts an optional array of
 integers, and returns one randomly. If the array is missing or empty, return a
 random number in the range 1 through 100.
 
 If that sounds easy, it’s because I haven’t explained the catch yet: I want
 you to write your function in a single line of code. No, that doesn’t mean you
 should just write lots of code then remove all the line breaks – you should be
 able to write this whole thing in one line of code.
 */

import SwiftUI

struct RandomItemFromArray: View {
    let nilArray: [Int]? = nil
    let integerList: [Int] = [8, 5, 3, 13, 42, 55, 69]
    @State var randomNumber = -13
    
    var body: some View {
        Form {
            Section("From nil array") {
                Text("\(randomNumberFromArray(nilArray))")
            }
            
            Section("From Integer List") {
                // Some shenanigans to get integer array as string ^-^
                Text(integerList.sorted().map {
                    $0.description
                }.joined(separator: ", "))
                
                Text("\(randomNumber)")
                
                Button("Get Random Number") {
                    randomNumber = randomNumberFromArray(integerList)
                }
            }
        }
    }
    
    func randomNumberFromArray(_ array: [Int]?) -> Int {
        array?.randomElement() ?? Int.random(in: 1_000...10_000)
    }
}
/*
 // Used to check whether or not random button works
extension Color {
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
 */

#Preview {
    RandomItemFromArray()
}
