//
//  Cart.swift
//  0706012110048-JovanLouisLemuel-AFL 2
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation

class Cart {
    var items: [String: Int] = [:]
    
    func addItem(item: Item, amount: Int) {
        items[item.name] = amount
    }
    
    func isEmpty() -> Bool {
        return items.isEmpty
    }
    
    func removeAllItems() {
        items.removeAll()
    }
    
    func total() -> Int {
        var total = 0
        for (itemName, amount) in items {
            if let item = getItemByName(itemName: itemName) {
                total += item.price * amount
            }
        }
        return total
    }
    
    func getItemByName(itemName: String) -> Item? {
        for shop in shops {
            for item in shop.items {
                if item.name == itemName {
                    return item
                }
            }
        }
        return nil
    }
    
    func printCart(cart: Cart) {
        print("Your order:")
        for (itemName, amount) in cart.items {
            if let item = cart.getItemByName(itemName: itemName) {
                print("- \(item.name) x\(amount)")
            }
        }
    }
    
}
