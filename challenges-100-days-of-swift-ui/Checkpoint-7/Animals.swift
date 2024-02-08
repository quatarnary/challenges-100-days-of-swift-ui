//
//  Animals.swift
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

import SwiftUI

struct Animals: View {
    var lion = Lion(leg: 4, isTame: false)
    var persian = Persian(leg: 4, isTame: true)
    
    var corgi = Corgi(leg: 4)
    var poodle = Poodle(leg: 4)
    
    
    var body: some View {
        let animals = [lion, persian, corgi, poodle]
        
        NavigationStack {
            Form {
                ForEach(animals) { animal in
                    Section(animal.type) {
                        Text("I have \(animal.leg) legs")
                        animal.speak()
                        if animal is Cat {
                            Text("This kitty is \((animal as! Cat).isTame ? "tame" : "not tame")")
                        }
                    }
                }
            }
            .navigationTitle("Animals")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Animals()
}
