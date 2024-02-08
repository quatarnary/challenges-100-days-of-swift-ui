//
//  CatModel.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 8.02.2024.
//

import Foundation
import SwiftUI

class Cat: Animal {
    var isTame: Bool
    
    init(leg: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(leg: leg)
        super.sound = Text("Meow")
        super.type = "Cat"
    }
}

/*
 I only have Persian and Lion class because of the challenge,
 otherwise we can just create them as variables
 */
class Persian: Cat {
    override init(leg: Int, isTame: Bool) {
        super.init(leg: leg, isTame: isTame)
        super.sound = Text("Persian purr")
        super.type = "Persian"
    }
}

class Lion: Cat {
    override init(leg: Int, isTame: Bool) {
        super.init(leg: leg, isTame: isTame)
        super.sound = Text("Katy Perry - ROAR")
        super.type = "Lion"
    }
}
