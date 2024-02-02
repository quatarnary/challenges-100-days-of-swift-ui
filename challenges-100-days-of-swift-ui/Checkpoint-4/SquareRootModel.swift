//
//  SquareRootModel.swift
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

import Foundation

struct SquareRootModel {
    var number: Int = 101
    var squareRoot: Int = -1
    var customError: SquareRootErrors = SquareRootErrors.noError
    
    init() {
        findSquareRoot()
    }
    
    init(number: Int) {
        self.number = number
        findSquareRoot()
    }
    
    mutating func findSquareRoot() {
        do{
            try squareRootFinder()
        } catch SquareRootErrors.outOfRange {
            customError = SquareRootErrors.outOfRange
        } catch SquareRootErrors.noRoot {
            customError = SquareRootErrors.noRoot
        } catch {
            customError = SquareRootErrors.otherErrors
        }
    }
    
    mutating func squareRootFinder() throws {
        if number < 1 || number > 10_000 {
            throw SquareRootErrors.outOfRange
        }
        
        var rootChecker = (number / 2)
        var bound = 0
        
        for _ in 0...10_000 {
            if rootChecker * rootChecker == number {
                squareRoot = rootChecker
                break
            } else if rootChecker * rootChecker > number {
                bound = rootChecker
                rootChecker = (rootChecker / 2)
            } else {
                rootChecker = (bound + rootChecker) / 2
            }
        }
        if squareRoot < 0 {
            throw SquareRootErrors.noRoot
        }
    }
}




// 100, 50, 50 * 50 > 100
// 100, 25, 25 * 25 > 100
// 100, 12, 12 * 12 > 100
// 100,  6,  6 *  6 < 100
// 100,  9,  9 *  9 < 100
// 100, 10, 10 * 10 = 100

// 101, 50, 50 * 50 > 101
// 101, 25, 25 * 25 > 101
// 101, 12, 12 * 12 > 101
// 101,  6,  6 *  6 < 101
// 101,  9,  9 *  9 < 101
// 101, 10, 10 * 10 < 101
// 101, 11, 11 * 11 > 101































