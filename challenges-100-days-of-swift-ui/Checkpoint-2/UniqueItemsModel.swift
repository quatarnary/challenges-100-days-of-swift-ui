//
//  UniqueItemsModel.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 31.01.2024.
//

import Foundation

struct UniqueItemsModel {
    var array: [String] = ["This", "time", "the", "challenge", "is", "to",
                           "create", "an", "array", "of", "strings,", "then",
                           "write", "some", "code", "that", "prints", "the",
                           "number", "of", "items", "in", "the", "array",
                           "and", "also", "the", "number", "of", "unique",
                           "items", "in", "the", "array."]
    
    var itemCount: Int {
        array.count
    }
    
    var uniqueItemCount: Int {
        Set(array).count
    }
}
