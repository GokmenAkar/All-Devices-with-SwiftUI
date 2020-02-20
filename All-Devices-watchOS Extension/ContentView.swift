//
//  ContentView.swift
//  All-Devices-watchOS Extension
//
//  Created by Developer on 20.02.2020.
//  Copyright © 2020 Developer. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private let animals = AnimalService.getAll()
    
    var body: some View {
        List(animals, id: \.name) { animal in
            NavigationLink(destination: SharedDetailView(animal: animal)) {
                AnimalCell(animal: animal)
            }
        }.listStyle(CarouselListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AnimalCell: View {
    let animal: Animal
    
    var body: some View {
        VStack(alignment: .center) {
            Text(animal.image).font(.custom("Arial", size: 64))
            Text(animal.name).font(.title)
            Text(animal.description)
        }.frame(minWidth: 0, maxWidth: .infinity)
    }
}
