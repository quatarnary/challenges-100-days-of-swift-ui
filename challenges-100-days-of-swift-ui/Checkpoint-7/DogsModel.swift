//
//  DogModel.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 8.02.2024.
//

import Foundation
import SwiftUI

class Dog: Animal {
    override init(leg: Int) {
        super.init(leg: leg)
        super.sound = Text("Bark")
        super.type = "Dog"
    }
}

/*
 I only have Corgi and Poodle class because of the challenge,
 otherwise we can just create them as variables
*/
class Corgi: Dog {
    override init(leg: Int) {
        super.init(leg: leg)
        super.sound = Text("Corgi Bark")
        super.type = "Corgi"
    }
}

class Poodle: Dog {
    override init(leg: Int) {
        super.init(leg: leg)
        super.sound = Text("Poodle Bark")
        super.type = "Poodle"
    }
}
