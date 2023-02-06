//
//  ViewModel.swift
//  TavernPub SwiftUI
//
//  Created by Admin on 5.02.23.
//

import SwiftUI
class ViewModel:ObservableObject {
    @Published var beerEmptyArray: [Beer] = []
    
    var beerArray = [Beer(beerName: "Александрыя", country: "🇧🇾", price: "3", remains: "43"),
                     Beer(beerName: "Лідскае піва", country: "🇿🇦", price: "4", remains: "65"),
                     Beer(beerName: "Kрыніца", country: "🇿🇼", price: "3", remains: "37") ]
    
    func addBeer () {
        beerEmptyArray = beerArray
    }
    
    init() {
        addBeer()
    }
    //  let myInt3 = ("43.3" as NSString).doubleValue
}
