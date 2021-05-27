//
//  RepiceRow.swift
//  Day4Manha
//
//  Created by Bruno Pastre on 27/05/21.
//

import SwiftUI

struct RecipeRow: View {
    
    let recipeName: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .fill()
                .frame(width: 328, height: 228)
            Text(recipeName)
        }
    }
}

struct RecipeRow_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRow(recipeName: "Capuccino")
    }
}
