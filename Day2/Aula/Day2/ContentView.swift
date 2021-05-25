//
//  ContentView.swift
//  Day2
//
//  Created by Bruno Pastre on 25/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var textContent = "Hello, worlnnd!"
    @State var isOn = true
    
    var body: some View {
        VStack {
            TextField("Digite seu texto aqui", text: $textContent)
            Text(textContent)
                .padding()
            
            Toggle("Ta ligado?", isOn: $isOn)
                
            Circle()
                .foregroundColor(isOn ? .yellow : .black)
                .frame(width: 48)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
