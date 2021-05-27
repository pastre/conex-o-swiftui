//
//  MusicRow.swift
//  AulaTarde
//
//  Created by Bruno Pastre on 26/05/21.
//

import SwiftUI

struct MusicRow: View {
    
    let musicName: String
    let artistName: String
    
    var body: some View {
        HStack {
            Image(systemName: "pencil.circle.fill")
                .padding(.trailing, 13)
            VStack(alignment: .leading) {
                Text(musicName)
                Text(artistName)
            }
            Spacer()
            Image(systemName: "play.circle.fill")
        }
    }
}

struct MusicRow_Previews: PreviewProvider {
    static var previews: some View {
        MusicRow(musicName: "oi", artistName: "eu")
    }
}
