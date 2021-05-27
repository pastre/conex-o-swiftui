//
//  RecipeList.swift
//  Day4Manha
//
//  Created by Bruno Pastre on 27/05/21.
//

import SwiftUI

struct Recipe: Identifiable {
    let name: String
    
    let id = UUID()
}

struct RecipeList: View {
    
    let recipes: [Recipe]
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(recipes) { recipe in
                    NavigationLink(
                        destination: RecipeDetailView(recipe: recipe)
                    ) {
                        RecipeRow(recipeName: recipe.name)
                    }
                }
            }
        }
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList(recipes: [
            Recipe(name: "Guacamole"),
            Recipe(name: "Guacamole"),
            Recipe(name: "Guacamole"),
            Recipe(name: "Guacamole"),
        ])
    }
}
