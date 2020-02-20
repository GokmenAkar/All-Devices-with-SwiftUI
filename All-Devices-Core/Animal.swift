//
//  Animal.swift
//  All-Devices-with-SwiftUI
//
//  Created by Developer on 20.02.2020.
//  Copyright © 2020 Developer. All rights reserved.
//

import Foundation

struct Animal: Hashable {
    let name: String
    let description: String
    let image: String
}

extension Animal {
    static var placeholder: Animal {
        return Animal(name: "", description: "", image: "")
    }
}
