//
//  Card.swift
//  BollitWallet
//
//  Created by Rafael Bollit on 25/05/2020.
//  Copyright © 2020 Rafael Bollit. All rights reserved.
//

import Foundation


enum CardType: String {
    case visa
    case amex
    case master
    case chase
}

struct Card: Identifiable {
    var id = UUID()
    var clientName : String
    var number: String
    var expirationDate: String
    var type: CardType
    var image: String
}

let tempCards = [
    Card(clientName: "Rafael Bollit Fernádez", number: "1212 1212 1212 1212",
         expirationDate: "01/21", type: .visa, image: "basic"),
    Card(clientName: "Rafael Bollit Fernádez", number: "3434 3434 3434 3434",
         expirationDate: "03/24", type: .master, image: "gold"),
    Card(clientName: "Rafael Bollit Fernádez", number: "5656 5656 5656 5656",
         expirationDate: "05/26", type: .master, image: "platinum"),
    Card(clientName: "Rafael Bollit Fernádez", number: "7878 7878 7878 7878",
         expirationDate: "07/28", type: .amex, image: "standard")
]
