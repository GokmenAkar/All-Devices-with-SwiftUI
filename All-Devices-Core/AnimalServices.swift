//
//  AnimalServices.swift
//  All-Devices-with-SwiftUI
//
//  Created by Developer on 20.02.2020.
//  Copyright © 2020 Developer. All rights reserved.
//

import Foundation

class AnimalService {
    static func getAll() -> [Animal] {
        return [
            Animal(name: "Tiger"  , description: "This is tiger"  , image: "🐅"),
            Animal(name: "Rat"    , description: "This is rat"    , image: "🐁"),
            Animal(name: "Giraffe", description: "This is giraffe", image: "🦒"),
            Animal(name: "Cat"    , description: "This is cat"    , image: "🐈")
        ]
    }
}
