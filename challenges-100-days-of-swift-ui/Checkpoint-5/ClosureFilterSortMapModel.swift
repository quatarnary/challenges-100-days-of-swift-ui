//
//  FilterSortMapModel.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 2.02.2024.
//

/*
 You’ve already met sorted(), filter(), map(), so I’d like you to put them
 together in a chain – call one, then the other, then the other back to back
 without using temporary variables.
 
 Your input is this:
 
 let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
 Your job is to:
 
 Filter out any numbers that are even
 Sort the array in ascending order
 Map them to strings in the format “7 is a lucky number”
 Print the resulting array, one item per line
 */

import Foundation

struct ClosureFilterSortMapModel {
    let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
    var luckyNumberString: [String] = [""]
    
    init() {
        luckyNumberString.removeAll()
        
        luckyNumberString = luckyNumbers.filter {
            !$0.isMultiple(of: 2)
        }.sorted().map {
            "\($0) is a lucky number"
        }
    }
}
