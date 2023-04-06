//
//  main.swift
//  0706012110048-JovanLouisLemuel-AFL 2
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation

//init
let tuku = Shop(id: 1, name: "Tuku-Tuku", items: [
    Item(id: 1, name: "Tahu Isi", price: 5000),
    Item(id: 2, name: "Nasi Kuning", price: 20000),
    Item(id: 3, name: "Nasi Campur", price: 20000),
    Item(id: 4, name: "Air Mineral", price: 5000),
    Item(id: 5, name: "Ayam Geprek", price: 20000)
])
let gotri = Shop(id: 2, name: "Gotri", items: [
    Item(id: 1, name: "Nasi Uduk", price: 25000),
    Item(id: 2, name: "Nasi Lemak", price: 30000),
    Item(id: 3, name: "Tahu Campur", price: 10000),
    Item(id: 4, name: "Air Mineral", price: 5000),
    Item(id: 5, name: "Es Teh", price: 7000)
])
let madam = Shop(id: 3, name: "Madam Lie", items: [
    Item(id: 1, name: "Salad Ayam", price: 40000),
    Item(id: 2, name: "Salad Ikan", price: 35000),
    Item(id: 3, name: "Salad Sapi", price: 45000),
    Item(id: 4, name: "Air Mineral", price: 5000),
    Item(id: 5, name: "Kombucha", price: 20000)
])
let kopte = Shop(id: 4, name: "Kopte", items: [
    Item(id: 1, name: "Kopi Tarik", price: 20000),
    Item(id: 2, name: "Teh Tarik", price: 15000),
    Item(id: 3, name: "Roti Bakar", price: 15000),
    Item(id: 4, name: "Roti Kaya", price: 17000),
    Item(id: 5, name: "Air Mineral", price: 6000)
])
let webel = Shop(id: 5, name: "Webels", items: [
    Item(id: 1, name: "Kopi Hitam", price: 20000),
    Item(id: 2, name: "Kopi Manis", price: 22000),
    Item(id: 3, name: "Kopi Susu", price: 25000),
    Item(id: 4, name: "Kopi Tubruk", price: 15000),
    Item(id: 5, name: "Air Mineral", price: 7000)
])

let shops = [tuku, gotri, madam, kopte, webel]
let cart = Cart()

var mainMenu: String?
var tukuMenu: String?
var gotriMenu: String?
var madamMenu: String?
var kopteMenu: String?
var webelMenu: String?
var cartMenu: String?
var userInput: Int?
// var cart: Int?
var totalOrder: Int?
var change: Int
var pay: Int
var back: Int

//start of program
repeat {
    switch mainMenu {
    case "1":
        repeat {
            switch tukuMenu {
            case "1":
                print("\n\(tuku.getItemById(1)!.name) @ \(tuku.getItemById(1)!.price)")
                print("How many tahu isi do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: tuku.items[0], amount: userInput)
                        print("\nThank you for ordering.")
                        tukuMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case "2":
                print("\nNasi Kuning @ 20.000")
                print("How many nasi kuning do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: tuku.items[1], amount: userInput)
                        print("\nThank you for ordering.")
                        tukuMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"3":
                print("\nNasi Campur @ 20.000")
                print("How many nasi campur do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: tuku.items[2], amount: userInput)
                        print("\nThank you for ordering.")
                        tukuMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"4":
                print("\nAir Mineral @ 5.000")
                print("How many air mineral do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: tuku.items[3], amount: userInput)
                        print("\nThank you for ordering.")
                        tukuMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"5":
                print("\nAyam Geprek @ 20.000")
                print("How many ayam geprek do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: tuku.items[4], amount: userInput)
                        print("\nThank you for ordering.")
                        tukuMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case "b":
                tukuMenu = ""
            default:
                print("""
                \nHi, welcome back to Tuku-Tuku!
                What would you like to order?\n
                [1] Tahu isi
                [2] Nasi kuning
                [3] Nasi campur
                [4] Air mineral
                [5] Ayam Geprek
                -
                [B]ack to Main Menu
                Your menu choice?
                """)
                tukuMenu = readLine()?.lowercased()
                break
            }
        } while tukuMenu != "b"
        mainMenu = ""
    case "2":
        repeat {
            switch gotriMenu {
            case "1":
                print("\nNasi Uduk @ 25.000")
                print("How many nasi uduk do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: gotri.items[0], amount: userInput)
                        print("\nThank you for ordering.")
                        gotriMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case "2":
                print("\nNasi Lemak @ 30.000")
                print("How many nasi lemak do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: gotri.items[1], amount: userInput)
                        print("\nThank you for ordering.")
                        gotriMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"3":
                print("\nTahu Campur @ 10.000")
                print("How many tahu campur do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: gotri.items[2], amount: userInput)
                        print("\nThank you for ordering.")
                        gotriMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"4":
                print("\nAir Mineral @ 5.000")
                print("How many air mineral do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: gotri.items[3], amount: userInput)
                        print("\nThank you for ordering.")
                        gotriMenu = ""
                    }
                    break
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"5":
                print("\nEs Teh @ 7.000")
                print("How many es teh do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: gotri.items[4], amount: userInput)
                        print("\nThank you for ordering.")
                        gotriMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case "b":
                gotriMenu = ""
            default:
                print("""
                \nHi, welcome back to Gotri!
                What would you like to order?\n
                [1] Nasi Uduk
                [2] Nasi Lemak
                [3] Tahu Campur
                [4] Air Mineral
                [5] Es Teh
                -
                [B]ack to Main Menu
                Your menu choice?
                """)
                gotriMenu = readLine()?.lowercased()
                break
            }
        } while gotriMenu != "b"
        mainMenu = ""
    case "3":
        repeat {
            switch madamMenu {
            case "1":
                print("\nSalad Ayam @ 40.000")
                print("How many salad ayam do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: madam.items[0], amount: userInput)
                        print("\nThank you for ordering.")
                        madamMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case "2":
                print("\nSalad Ikan @ 35.000")
                print("How many salad ikan do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: madam.items[1], amount: userInput)
                        print("\nThank you for ordering.")
                        madamMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"3":
                print("\nSalad Sapi @ 45.000")
                print("How many salad sapi do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: madam.items[2], amount: userInput)
                        print("\nThank you for ordering.")
                        madamMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"4":
                print("\nAir Mineral @ 5.000")
                print("How many air mineral do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: madam.items[3], amount: userInput)
                        print("\nThank you for ordering.")
                        madamMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"5":
                print("\nKombucha @ 20.000")
                print("How many kombucha do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: madam.items[4], amount: userInput)
                        print("\nThank you for ordering.")
                        madamMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case "b":
                madamMenu = ""
            default:
                print("""
                \nHi, welcome back to Madam Lie!
                What would you like to order?\n
                [1] Salad Ayam
                [2] Salad Ikan
                [3] Salad Sapi
                [4] Air Mineral
                [5] Kombucha
                -
                [B]ack to Main Menu
                Your menu choice?
                """)
                madamMenu = readLine()?.lowercased()
                break
            }
        } while madamMenu != "b"
        mainMenu = ""
    case "4":
        repeat {
            switch kopteMenu {
            case "1":
                print("\nKopi Tarik @ 20.000")
                print("How many kopi tarik do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: kopte.items[0], amount: userInput)
                        print("\nThank you for ordering.")
                        kopteMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case "2":
                print("\nTeh Tarik @ 15.000")
                print("How many teh tarik do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: kopte.items[1], amount: userInput)
                        print("\nThank you for ordering.")
                        kopteMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"3":
                print("\nRoti Bakar @ 15.000")
                print("How many roti bakar do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: kopte.items[2], amount: userInput)
                        print("\nThank you for ordering.")
                        kopteMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"4":
                print("\nRoti Kaya @ 17.000")
                print("How many roti kaya do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: kopte.items[3], amount: userInput)
                        print("\nThank you for ordering.")
                        kopteMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"5":
                print("\nAir Mineral @ 6.000")
                print("How many air mineral do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: kopte.items[4], amount: userInput)
                        print("\nThank you for ordering.")
                        kopteMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }

            case "b":
                kopteMenu = ""
            default:
                print("""
                \nHi, welcome back to Kopte!
                What would you like to order?\n
                [1] Kopi Tarik
                [2] Teh Tarik
                [3] Roti Bakar
                [4] Roti Kaya
                [5] Air Mineral
                -
                [B]ack to Main Menu
                Your menu choice?
                """)
                kopteMenu = readLine()?.lowercased()
                break
            }
        } while kopteMenu != "b"
        mainMenu = ""
    case "5":
        repeat {
            switch webelMenu {
            case "1":
                print("\nKopi Hitam @ 20.000")
                print("How many kopi hitam do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: webel.items[0], amount: userInput)
                        print("\nThank you for ordering.")
                        webelMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case "2":
                print("\nKopi Manis @ 22.000")
                print("How many kopi manis do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: webel.items[1], amount: userInput)
                        print("\nThank you for ordering.")
                        webelMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"3":
                print("\nKopi Susu @ 25.000")
                print("How many kopi susu do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: webel.items[2], amount: userInput)
                        print("\nThank you for ordering.")
                        webelMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"4":
                print("\nKopi Tubruk @ 15.000")
                print("How many kopi tubruk do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: webel.items[3], amount: userInput)
                        print("\nThank you for ordering.")
                        webelMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case"5":
                print("\nAir Mineral @ 7.000")
                print("How many air mineral do you want to buy?")
                if let input = readLine(), let userInput = Int(input) {
                    if userInput >= 0 {
                        cart.addItem(item: webel.items[4], amount: userInput)
                        print("\nThank you for ordering.")
                        webelMenu = ""
                        break
                    }
                } else {
                    print("\nPlease enter a valid amount.")
                }
            case "b":
                webelMenu = ""
            default:
                print("""
                \nHi, welcome back to Webels!
                What would you like to order?\n
                [1] Kopi Hitam
                [2] Kopi Manis
                [3] Kopi Susu
                [4] Kopi Tubruk
                [5] Air Mineral
                -
                [B]ack to Main Menu
                Your menu choice?
                """)
                webelMenu = readLine()?.lowercased()
                break
            }
        } while webelMenu != "b"
        mainMenu = ""
    case "s":
        if cart.isEmpty() {
            print("\nYour cart is empty.")
        } else {
            repeat {
                print("")
                cart.printCart(cart: cart)
                print ("""
                \nPress [B] to go back
                Press [P] to pay / checkout
                Your choice?
                """)
                cartMenu = readLine()?.lowercased()
                // checkout menu
                if cartMenu == "p" {
                    print("\nYour total order: \(cart.total())")
                    print("Enter the amount of your money:")
                    if userInput ?? 0 < 0 {
                        print("\nPlease enter a valid amount.")
                    } else if let input2 = readLine(), let userInput = Int(input2) {
                        pay = userInput
                        change = cart.total() - pay
                        if pay == 0 {
                            print("\nAmount is too small")
                        } else if pay < cart.total() {
                            print("\nAmount is too small")
                        } else {
                            print("\nYour total order: \(cart.total())")
                            print("You pay: \(pay) Change: \(abs(change))")
                            cart.removeAllItems()
                            print("\nEnjoy your meals!")
                            print("\nPress [ANY KEY] to go back to main screen:")
                            back = Int(readLine()!) ?? 0
                            break
                        }
                    } else {
                        print("\nPlease enter a valid amount.")
                    }
                }
            } while cartMenu != "b" // || cartMenu != "p"
            cartMenu = ""
        }
        mainMenu = ""
        break
    case "q":
        exit(0)
    default:
        print("""
        \nWelcome to UC-Walk Cafeteria 👨🏿‍🍳👩🏿‍🍳
        Please choose cafeteria:\n
        [1] Tuku-Tuku
        [2] Gotri
        [3] Madam Lie
        [4] Kopte
        [5] Webels
        -
        [S]hopping Cart
        [Q]uit
        Your cafeteria choice?
        """)
        mainMenu = readLine()?.lowercased()
        break
    }
} while mainMenu != "q"
