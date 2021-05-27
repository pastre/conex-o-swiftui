//
//  RecipeView.swift
//  LiveCoding4
//
//  Created by Bruno Pastre on 27/05/21.
//

import SwiftUI

struct RecipeView: View {
    
    let recipe: Recipe
    
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(1, contentMode: .fit)
            Text(recipe.name)
                .font(.title)
                .padding()
            Text("Ingredientes")
                .bold()
            Text("4 avocados")
            Text("1 tomatao")
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe(name: "so pra preview nao me importo"))
    }
}
