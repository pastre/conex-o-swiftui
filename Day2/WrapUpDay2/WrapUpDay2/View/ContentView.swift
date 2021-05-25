//
//  ContentView.swift
//  WrapUpDay2
//
//  Created by Bruno Pastre on 25/05/21.
//

import SwiftUI

struct ContentView: View {
        
    @State var password = ""
    @State var senha2 = ""
    @State var senha3 = ""
    @State var senha4 = ""
    
    func isPasswordEnabled() -> Bool {
        !password.isEmpty
    }
    func isSenha2Enabled() -> Bool {
        !senha2.isEmpty
    }
    func isSenha3Enabled() -> Bool {
        !senha3.isEmpty
    }
    
    
    func isButtonDisabled() -> Bool {
        let isEverythingTheSame = isPasswordEnabled() &&
                                    isSenha2Enabled() &&
                                    isSenha3Enabled()
        return !isEverythingTheSame
    }
    
    var body: some View {
        VStack {
            HiddeablePasswordView(
                password: $password,
                placeholderText: "Sua senha",
                toggleMessage: "Ver senha"
            )
            HiddeablePasswordView(
                password: $senha2,
                placeholderText: "Sua senha",
                toggleMessage: "Ver senha"
            )
            HiddeablePasswordView(
                password: $senha3,
                placeholderText: "Sua senha",
                toggleMessage: "Ver senha"
            )
            
            Button(action: {
                fatalError()
            }, label: {
                Image(systemName: "pencil.tip")
                    .resizable()
                    .frame(width: 100, height: 100 )
                    .foregroundColor(
                        isButtonDisabled() ?
                            .gray : .purple
                    )
            })
            .disabled(isButtonDisabled())
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
