//
//  Beer.swift
//  TavernPub SwiftUI
//
//  Created by Admin on 5.02.23.
//

import SwiftUI
class Beer: Identifiable {
    var id = UUID()
    
    var beerName: String
    var country: String
    var price: String // - Инт не даёт, нужен <T>?
    var remains: String
    
    init(beerName: String, country: String, price: String, remains: String) {
        self.beerName = beerName
        self.country = country
        self.price = price
        self.remains = remains
    }
}
