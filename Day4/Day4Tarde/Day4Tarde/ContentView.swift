//
//  ContentView.swift
//  Day4Tarde
//
//  Created by Bruno Pastre on 27/05/21.
//

import SwiftUI


// 1. Onde estamos?✅
// 2. Para onde vamos?✅
// 3. Quando vamos?

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Oi! Sou a primeira tela!")
                    .padding()
                NavigationLink(destination: SegundaTela()) {
                    Text("Vou te levar para a segunda tela")
                }
            }
            .navigationBarTitle("Salve", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
