//
//  Shop.swift
//  0706012110048-JovanLouisLemuel-AFL 2
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation

class Shop {
    var id: Int
    var name: String
    var items: [Item]
    
    init(id: Int, name: String, items: [Item]) {
        self.id = id
        self.name = name
        self.items = items
    }
    
    func getShopById(id: Int) -> String? {
        for shop in shops {
            if shop.id == id {
                return shop.name
            }
        }
        return nil
    }
    
    func getItemById(_ id: Int) -> Item? {
        for item in items {
            if item.id == id {
                return item
            }
        }
        return nil
    }
}
