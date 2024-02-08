//
//  Protocol.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 8.02.2024.
//

import SwiftUI

struct Building: View {
    var threeRoomOffice = Office(roomCount: 3, buildingCost: 250_000, responsibleEstateAgent: "Taylor")
    var fiveRoomOffice = Office(roomCount: 5, buildingCost: 500_000, responsibleEstateAgent: "Katy")
    var fourRoomHouse = House(roomCount: 4, buildingCost: 350_000, responsibleEstateAgent: "Katy")
    var twoRoomHouse = House(roomCount: 2, buildingCost: 450_000, responsibleEstateAgent: "Katy")
    
    var body: some View {
        var buildings: [any BuildingModel] {
            [threeRoomOffice, fiveRoomOffice, fourRoomHouse, twoRoomHouse]
        }
        
        NavigationStack {
            Form {
                ForEach(buildings, id: \.id) { building in
                    building.printSummary()
                }
            }
            .navigationTitle("Protocol")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Building()
}
