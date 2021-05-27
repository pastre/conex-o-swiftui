//
//  CurrencyView.swift
//  CurrencyApp
//
//  Created by Vinícius Binder on 26/05/21.
//

import SwiftUI

struct CurrencyView: View {
    
    @State private var searchText = ""
    
    private var popular: [Currency] {
        all.filter { $0.isPopular }
    }
    
    private var all: [Currency] {
        Currency.currencies.sorted { $0.name < $1.name }.filter { searchText.isEmpty ? true : ($0.name + $0.abbreviation).lowercased().contains(searchText.lowercased()) }
    }
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color(.systemGray3))
                TextField("Search currency", text: $searchText)
            }
            .padding(10)
            .background(Color.white)
            .cornerRadius(8)
            .padding()
            
            List {
                ListSectionView(title: "Popular Currencies", systemImage: "arrow.up", currencies: popular)
                
                ListSectionView(title: "All Currencies", systemImage: nil, currencies: all)
            }
            .listStyle(GroupedListStyle())
        }
        .background(Color(.systemGray6).ignoresSafeArea())
    }
}

struct CurrencyView_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyView()
    }
}
