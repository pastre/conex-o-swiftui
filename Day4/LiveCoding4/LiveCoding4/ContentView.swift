//
//  ContentView.swift
//  LiveCoding4
//
//  Created by Bruno Pastre on 27/05/21.
//

// 1. Onde estamos?✅
// 2. Para onde vamos?✅
// 3. Quando vamos?

import SwiftUI

struct ContentView: View {
    
    @State var searchQuery = ""
    
    var body: some View {
//        NavigationView {
            VStack {
                Text("O que cozinhar hj?")
                searchBar
                Text("Cafe da manha")
                RecipeList(recipes: [
                    Recipe(name: "Capuccino"),
                    Recipe(name: "Guacamole"),
                    Recipe(name: "Coquinha 2l"),
                    Recipe(name: "Pizza"),
                ])
//                .padding()
            }
//        }
    }
    
    var searchBar: some View {
        TextField("Pesquisar", text: $searchQuery)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
