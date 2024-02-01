//
//  FizzBuzzModel.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 31.01.2024.
//

import Foundation

struct FizzBuzzModel {
    var range: Int = 100
    var lowerRange: Int = 1
    var fizzBuzzAllValues: [String] = ["Fizz Buzz"]
    var fizzBuzz: [Int] = [0]
    var fizz: [Int] = [0]
    var buzz: [Int] = [0]
    
    init() {
        fizzBuzzCalculator()
    }
    
    init(range: Int) {
        self.range = range
        
        fizzBuzzCalculator()
    }
    
    init(range: Int, lowerRange: Int) {
        self.range = range
        self.lowerRange = lowerRange
        
        fizzBuzzCalculator()
    }
    
    mutating func fizzBuzzCalculator() {
        fizzBuzzAllValues.removeAll()
        fizzBuzz.removeAll()
        fizz.removeAll()
        buzz.removeAll()
        
        for number in lowerRange...range {
            if number % 5 == 0 && number % 3 == 0 {
                fizzBuzz.append(number)
                fizzBuzzAllValues.append("Fizz Buzz")
            } else if number % 5 == 0 {
                buzz.append(number)
                fizzBuzzAllValues.append("Buzz")
            } else if number % 3 == 0 {
                fizz.append(number)
                fizzBuzzAllValues.append("Fizz")
            } else {
                fizzBuzzAllValues.append("\(number)")
            }
        }
    }
}
