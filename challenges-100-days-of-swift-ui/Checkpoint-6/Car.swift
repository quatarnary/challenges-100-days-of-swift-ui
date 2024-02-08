//
//  Car.swift
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

import SwiftUI

struct Car: View {
    @State private var cars: [CarModel] = [
        CarModel(Model: "Octavia", numberOfSeats: 5, maxGearNumber: 7),
        CarModel(Model: "Fiesta", numberOfSeats: 2, maxGearNumber: 5)
    ]
    
    var body: some View {
        NavigationStack {
            ForEach($cars) { $car in
                VStack {
                    VStack(alignment: .leading) {
                        Text("\(car.model)")
                            .font(.title)
                        Text("Number of Seats: \(car.numberOfSeats)")
                            .font(.callout)
                            .italic()
                            .padding(.bottom)
                        
                        /* 
                         this part could be much better, Everywhere could be much better :(
                         putting if else just to change text doesn't seems right
                         */
                        if car.currentGear == -2 {
                            Text("Current Gear: Park")
                                .font(.title3)
                        } else if car.currentGear == -1 {
                            Text("Current Gear: Reverse")
                                .font(.title3)
                        } else if car.currentGear == 0 {
                            Text("Current Gear: Netural")
                                .font(.title3)
                        } else {
                            Text("Current Gear: Drive \(car.currentGear)")
                                .font(.title3)
                        }
                        
                        HStack {
                            /*
                             Button actions here should be inside the CarModel,
                             not here
                             
                             And for the love of god
                             I'm putting the same attributes everywhere,
                             I should made a special button here :(
                             */
                            Button("Gear Down") {
                                if car.currentGear > 1 {
                                    car.currentGear -= 1
                                }
                            }
                            .padding()
                            .frame(minWidth: 150)
                            .background(Color.red)
                            .foregroundStyle(Color.white)
                            
                            Spacer()
                            
                            Button("Gear Up") {
                                if car.currentGear < car.maxGearNumber {
                                    car.currentGear += 1
                                }
                            }
                            .padding()
                            .frame(minWidth: 150)
                            .background(Color.green)
                            .foregroundStyle(Color.white)
                        }
                    }
                    .padding(.bottom, 6)
                    
                    HStack(alignment: .center) {
                        /*
                         Same shit here!
                         And for the love of god
                         I'm putting the same attributes everywhere,
                         I should made a special button here :(
                         */
                        Button("Netural") {
                            car.setGearNetural()
                        }
                        .padding()
                        .frame(minWidth: 100)
                        .foregroundStyle(Color.white)
                        .background(Color.secondary)
                        
                        Spacer()
                        
                        Button("Reverse") {
                            car.setGearReverse()
                        }
                        .padding()
                        .frame(minWidth: 100)
                        .foregroundStyle(Color.white)
                        .background(Color.secondary)
                        
                        Spacer()
                        
                        Button("Park") {
                            car.setGearPark()
                        }
                        .padding()
                        .frame(minWidth: 100)
                        .foregroundStyle(Color.white)
                        .background(Color.secondary)
                    }
                }
                .padding()
                .border(Color.black)
                .padding()
            }
            .navigationTitle("Car Struct")
            .navigationBarTitleDisplayMode(.inline)
        }

    }
}

#Preview {
    Car()
}
