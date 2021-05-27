//
//  Currency.swift
//  CurrencyApp
//
//  Created by Vinícius Binder on 26/05/21.
//

import Foundation

struct Currency: Identifiable {
    let id = UUID()
    let name: String
    let abbreviation: String
    let flag: String
    let isPopular: Bool
    
    static let currencies = [
        Currency(name: "British Pound", abbreviation: "GBP", flag: "united-kingdom", isPopular: true),
        Currency(name: "Brazilian Real", abbreviation: "BRL", flag: "brazil", isPopular: false),
        Currency(name: "Australian Dollar", abbreviation: "AUD", flag: "australia", isPopular: false),
        Currency(name: "US Dollar", abbreviation: "USD", flag: "united-states", isPopular: true),
        Currency(name: "Canadian Dollar", abbreviation: "CAD", flag: "canada", isPopular: false),
        Currency(name: "Chinese Yuan", abbreviation: "CNY", flag: "china", isPopular: false),
        Currency(name: "European Euro", abbreviation: "EUR", flag: "european-union", isPopular: true),
    ]
}
