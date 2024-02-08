//
//  CarModel.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 6.02.2024.
//

/*
 To check your knowledge, here’s a small task for you: create a struct to store
 information about a car, including its model, number of seats, and current
 gear, then add a method to change gears up or down. Have a think about
 variables and access control: what data should be a variable rather than a
 constant, and what data should be exposed publicly? Should the gear-changing
 method validate its input somehow?
 */

import Foundation

struct CarModel: Identifiable {
    let id: UUID
    let model: String
    let numberOfSeats: Int
    let maxGearNumber: Int
    private let minGearNumber: Int = -2
    private let netural: Int = 0
    private let reverse: Int = -1
    private let park: Int = -2
    // 0 as netural, -1 is reverse, -2 is park,
    var currentGear: Int = 0
    
    init(Model: String, numberOfSeats: Int, maxGearNumber: Int) {
        self.model = Model
        self.numberOfSeats = numberOfSeats
        self.maxGearNumber = maxGearNumber
        self.currentGear = -2
        self.id = UUID()
    }
    
//    mutating func gearUp() {
//        if currentGear < maxGearNumber {
//            currentGear += 1
//        }
//    }
//    
//    mutating func gearDown() {
//        if currentGear > 1 {
//            currentGear -= 1
//        }
//    }
    
    mutating func setGearNetural() {
        currentGear = netural
    }
    
    mutating func setGearPark() {
        currentGear = park
    }
    
    mutating func setGearReverse() {
        currentGear = reverse
    }
}
