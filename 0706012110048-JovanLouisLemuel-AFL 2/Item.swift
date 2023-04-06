//
//  Item.swift
//  0706012110048-JovanLouisLemuel-AFL 2
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation

class Item {
    var id: Int
    var name: String
    var price: Int
    
    init(id: Int, name: String, price: Int) {
        self.id = id
        self.name = name
        self.price = price
    }
    
    func getName() -> String {
        return self.name
    }
        
    func getPrice() -> Int {
        return self.price
    }
}
