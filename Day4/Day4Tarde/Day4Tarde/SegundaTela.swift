//
//  Segunda Tela.swift
//  Day4Tarde
//
//  Created by Bruno Pastre on 27/05/21.
//

import SwiftUI

struct SegundaTela: View {
    var body: some View {
        VStack {
            Text("Oi! Sou a segunda tela")
            NavigationLink(destination: Text("Oi! Sou a terceira tela!")) {
                Image(systemName: "pencil")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
            }
        }
    }
}

struct SegundaTela_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SegundaTela()
        }
    }
}
