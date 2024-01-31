//
//  Checkpoint1-Model.swift
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

import Foundation

struct TemperatureConverterModel {
    var celciusTemp = 5.0
    var fahrenheitTemp: Double {
        ((celciusTemp * 9.0) / 5.0) + 32.0
    }
}
