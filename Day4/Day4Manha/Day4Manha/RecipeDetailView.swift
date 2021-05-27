//
//  RecipeDetailView.swift
//  Day4Manha
//
//  Created by Bruno Pastre on 27/05/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    let recipe: Recipe
    
    var body: some View {
        VStack {
            Rectangle()
                .fill()
                .frame(width: 372, height: 224)
            Text(recipe.name)
                .font(.title)
         
            ingredientsView
            instructionsView
        }
        .navigationBarItems(trailing: Image(systemName: "pencil"))
    }
    
    var ingredientsView: some View {
        VStack {
            Text("Ingredientes")
                .bold()
            Text("• 4 avocados")
            Text("• 1 tomatao")
        }
    }
    
    var instructionsView: some View {
        VStack {
            Text("Modo de preparo")
                .bold()
            Text("1. 4 avocados")
            Text("2. 1 tomatao")
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: Recipe(name: "asdasda"))
    }
}
