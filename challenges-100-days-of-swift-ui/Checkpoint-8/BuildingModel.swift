//
//  ProtocolModel.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 8.02.2024.
//

import Foundation
import SwiftUI

enum BuildingType: String {
    case office, house
}

protocol BuildingModel: Identifiable {
    var id: UUID { get }
    var buildingType: BuildingType { get}
    var roomCount: Int { get set }
    var buildingCost: Int { get set }
    var responsibleEstateAgent: String { get set }
}

extension BuildingModel {
    func printSummary() -> Text {
        /*
         There is a lovely lovely regex here
         "^[\(roomCount) room](inflect: true)"
         adjust the room based on it's count
         if it's more than one it will be rooms */
        Text("\(responsibleEstateAgent) is selling this lovely \(buildingType.rawValue.capitalized) with ^[\(roomCount) room](inflect: true) for \(buildingCost).")
    }
}

struct Office: BuildingModel {
    let id = UUID()
    let buildingType = BuildingType.office
    var roomCount: Int
    var buildingCost: Int
    var responsibleEstateAgent: String
}

struct House: BuildingModel {
    let id = UUID()
    let buildingType = BuildingType.house
    var roomCount: Int
    var buildingCost: Int
    var responsibleEstateAgent: String
}
