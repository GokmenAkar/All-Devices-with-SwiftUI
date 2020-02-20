//
//  DetailView.swift
//  All-Devices-with-SwiftUI
//
//  Created by Developer on 20.02.2020.
//  Copyright © 2020 Developer. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let animal: Animal
    var body: some View {
        VStack {
            Text(animal.image).font(.custom("Arial", size: 80))
            Text(animal.name)
            Text(animal.description)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(animal: Animal(name: "Cat",
                                  description: "This is a cat",
                                  image: "🐈"))
    }
}
