//
//  ContentView.swift
//  Day4Manha
//
//  Created by Bruno Pastre on 27/05/21.
//

import SwiftUI

// 1. Onde estamos? ✅
// 2. Para qual tela queremos ir?✅
// 3. Quando queremos ir?

struct ContentView: View {
    
    @State var searchQuery: String = ""
    
    let recipes = [
        Recipe(name: "Capuccino"),
        Recipe(name: "Guacamole"),
        Recipe(name: "Pizza"),
        Recipe(name: "Cafezin"),
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Text("O que cozinhar hoje?")
                searchBar
                
                Text("Cafe da manha")
                RecipeList(recipes: recipes)
            }
        }
    }
    
    var searchBar: some View {
        TextField("Pesquisar", text: $searchQuery)
    }
}


//struct ContentView1: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//                Text("Oi! Sou a primeira tela!")
//                    .padding()
//                NavigationLink(destination: SegundaTela()) {
//                    Text("Oi! Vou te levar para a segunda tela!")
//                        .foregroundColor(.purple)
//                }
//            }
//            .navigationBarTitle("Text", displayMode: .inline)
////            .navigationTitle("oi")
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
