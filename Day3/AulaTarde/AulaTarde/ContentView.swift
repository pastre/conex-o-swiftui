//
//  ContentView.swift
//  Dia03
//
//  Created by Barbra Silva on 26/05/21.
//

import SwiftUI

struct Music: Identifiable {
    var id = UUID()
    let artistName: String
    let name: String
    let imageName: String
}

struct SectionsView: View {
    
    let popMusics: [Music]
    let 🤠: [Music]
    
    var body: some View {
        VStack {
            musicList
        }
    }
    
    var musicList: some View {
        List {
            Section(header: Text("Pop")) {
                ForEach(popMusics) {
                    Text($0.name)
                }
            }
            
            Section(header: Text("Forro")) {
                ForEach(🤠) {
                    Text($0.name)
                }
            }
        }
    }
}

struct ContentView: View {
    
    let musics: [Music]
    
    @State var searchQuery = ""
    
    var body: some View {
        VStack {
            searchBar
            musicList
        }
    }
    
    var searchBar: some View {
        TextField("Search", text: $searchQuery)
    }
    
    var musicList: some View {
        List(filteredMusics()) { music in
            MusicRow(
                musicName: music.name,
                artistName: music.artistName
            )
        }
    }
    
    func filteredMusics() -> [Music] {
       return searchQuery.isEmpty ?
            musics :
            musics.filter {
                isMusicNameMatching($0) ||
                isArtistNameMatching($0)
            }
    }
    
    func isMusicNameMatching(_ music: Music) -> Bool {
        music.name.lowercased().contains(searchQuery.lowercased())
    }
    
    func isArtistNameMatching(_ music: Music) -> Bool {
        music.artistName.lowercased().contains(searchQuery.lowercased())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(musics: [
            Music(
                artistName: "asd",
                name: "qew",
                imageName: ""
            ),
            Music(
                artistName: "ksjkjkjkjk",
                name: "oieoieoeoie",
                imageName: ""
            ),]
        )
    }
}
