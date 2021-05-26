//
//  ContentView.swift
//  AulaTarde
//
//  Created by Bruno Pastre on 26/05/21.
//

import SwiftUI

struct Mentor: Identifiable {
    var id = UUID()
    
    let nome: String
    let descricao: String
}

struct ContentView: View {
    let mentores: [Mentor]
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(mentores) { mentor in // for mentor in mentores
                    Text(mentor.nome)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(mentores: [
            Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),Mentor(
                nome: "Rofs",
                descricao: "O designer"
            ),
        ])
    }
}
