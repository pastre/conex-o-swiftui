//
//  ListCellView.swift
//  CurrencyApp
//
//  Created by Vinícius Binder on 26/05/21.
//

import SwiftUI

struct ListCellView: View {
    let currency: Currency
    
    var body: some View {
        HStack(spacing: 20) {
            Image(currency.flag)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40)
            
            VStack(alignment: .leading) {
                Text(currency.name)
                    .foregroundColor(.primary)
                Text(currency.abbreviation)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding(.vertical, 5)
    }
}

struct ListCellView_Previews: PreviewProvider {
    static var previews: some View {
        ListCellView(currency: Currency.currencies.first!)
    }
}
