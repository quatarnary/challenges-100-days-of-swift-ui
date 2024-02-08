//
//  AnimalsModel.swift
//  challenges-100-days-of-swift-ui
//
//  Created by Bugra Aslan on 8.02.2024.
//

/*
 Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.
 
 But there’s more:
 
 The Animal class should have a legs integer property that tracks how many legs the animal has.
 The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
 The Cat class should have a matching speak() method, again with each subclass printing something different.
 The Cat class should have an isTame Boolean property, provided using an initializer.
 */

import Foundation
import SwiftUI

class Animal: Identifiable {
    let id: UUID = UUID()
    var leg: Int = 0
    var type: String = "Animal"
    var sound: Text = Text("default sound")
    
    func speak() -> Text {
        sound
    }
    
    init(leg: Int) {
        self.leg = leg
    }
}
