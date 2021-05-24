//
//  ContentView.swift
//  SwiftUIChallenge
//
//  Created by Vinícius Binder on 24/05/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            VStack {
                Image("Banner")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(12)
                    .frame(height: 100)
                
                Text("Welcome to")
                    .font(.system(size: 36, weight: .black, design: .rounded))
                
                Text("Gradients Game")
                    .font(.system(size: 36, weight: .black, design: .rounded))
                    .foregroundColor(.accentColor)
            }
            .padding(.top, 60)
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 20) {
                InfoView(title: "Match", subtitle: "Match the gradients by moving the Red, Green and Blue sliders for the left and right colors.", imageName: "trash")
                
                InfoView(title: "Precise", subtitle: "JADLFIUWHDNWDNJKAWNDKHAWDNJQENLKDJN dkaljhfHAEULifhs ajhfewlhfewjfn", imageName: "star.fill")
                
                InfoView(title: "Hello", subtitle: "Match the gradients by moving the Red, Green and Blue sliders for the left and right colors.", imageName: "pencil.circle")
            }
            
            Spacer()
            
            Button {
                // Action
            } label: {
                Text("Continue")
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(width: 350, height: 55)
                    .background(RoundedRectangle(cornerRadius: 12).fill(Color.accentColor))
            }
            .padding(.bottom, 30)
        }
        .accentColor(Color("CorDaNaomi"))
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            
    }
}

struct InfoView: View {
    let title: String
    let subtitle: String
    let imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .font(.largeTitle)
                .foregroundColor(.accentColor)
                .frame(width: 70)
            
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(subtitle)
                    .font(.body)
                    .foregroundColor(.secondary)
            }
        }
    }
}
