//
//  transaction.swift
//  BollitWallet
//
//  Created by Rafael Bollit on 25/05/2020.
//  Copyright © 2020 Rafael Bollit. All rights reserved.
//

import Foundation


struct Transaction: Identifiable {
    var id = UUID ()
    var seller: String
    var amount: Double
    var date: String
    var icon: String = "dollarsign.circle.fill"
    
    
}

let transactions = [
    Transaction(seller: "Amazon", amount: 14.25, date: "09/10/20", icon: "dollarsign.circle.fill"),
    Transaction(seller: "Carrefour", amount: 36.43, date: "12/10/20", icon: "cart.fill"),
    Transaction(seller: "Apple", amount: 1437, date: "14/10/20", icon: "gift.fill"),
    Transaction(seller: "Netflix", amount: 9.99, date: "14/10/20", icon: "tv.circle.fill"),
    Transaction(seller: "Mercedes-Benz", amount: 348.77, date: "17/10/20", icon: "car.fill"),
    Transaction(seller: "Steam", amount: 30.99, date: "17/10/20", icon: "gamecontroller.fill"),
    Transaction(seller: "veterinary", amount: 42.78, date: "19/10/20", icon: "heart.circle.fill")
     
]
