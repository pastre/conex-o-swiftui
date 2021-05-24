//
//  ContentView.swift
//  ConexaoSUI Dia 1
//
//  Created by Bruno Pastre on 24/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Oi!")
            Text("E ai")
                .font(.title)
                .bold()
                .padding()
                .background(Color.purple)
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        .padding()
    }
}

//struct ContentView: View {
//    let imageName = "pencil.circle.fill"
//    var body: some View {
//        VStack {
//            Image(uiImage: UIImage(named: "minhaImagem")!
//            )
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
