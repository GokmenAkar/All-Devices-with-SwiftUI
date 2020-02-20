//
//  ContentView.swift
//  All-Devices-macOS
//
//  Created by Developer on 20.02.2020.
//  Copyright © 2020 Developer. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let animal: Animal
    var body: some View {
        VStack {
            Text(animal.image).font(.custom("Arial", size: 100))
            Text(animal.name).font(.title)
            Text(animal.description)
        }
    }
}

struct AnimalList: View {
    @Binding var selectedAnimal: Animal?
    
    private let animals = AnimalService.getAll()
    var body: some View {
        List(animals, id: \.name) { animal in
            VStack(alignment: .center) {
                Text(animal.image)
                    .font(.custom("Arial", size: 92))
                Text(animal.name)
                    .font(.title)
            }.onTapGesture {
                self.selectedAnimal = animal
            }
        }
    }
}

struct ContentView: View {
    
    @State private var selectedAnimal: Animal? = nil
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                AnimalList(selectedAnimal: self.$selectedAnimal)
            }
            
            GeometryReader { g -> SharedDetailView in
                if let animal = self.selectedAnimal {
                    return SharedDetailView(animal: animal)
                } else {
                    return SharedDetailView(animal: Animal.placeholder)
                }
            }
            
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
