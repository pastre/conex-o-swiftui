//
//  RecipeList.swift
//  LiveCoding4
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
                    NavigationLink(destination: RecipeView(recipe: recipe)) {
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
            Recipe(name: "asdad"),
            Recipe(name: "qweqeqew"),
            Recipe(name: "321312"),
            Recipe(name: "asdad"),
        ])
    }
}
