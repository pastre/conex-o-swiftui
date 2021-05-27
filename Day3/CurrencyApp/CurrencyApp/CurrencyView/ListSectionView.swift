//
//  ListSectionView.swift
//  CurrencyApp
//
//  Created by Vinícius Binder on 26/05/21.
//

import SwiftUI

struct ListSectionView: View {
    let title: String
    let systemImage: String?
    let currencies: [Currency]
    
    var body: some View {
        if !currencies.isEmpty {
            Section(header: header) {
                ForEach(currencies) { currency in
                    ListCellView(currency: currency)
                }
            }
        }
    }
    
    private var header: some View {
        HStack {
            if let systemImage = systemImage {
                Image(systemName: systemImage)
            }
            Text(title)
            Spacer()
        }
        .foregroundColor(.primary)
        .font(.headline)
        .textCase(.none)
    }
}

struct ListSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ListSectionView(title: "All Currencies", systemImage: nil, currencies: Currency.currencies)
    }
}
