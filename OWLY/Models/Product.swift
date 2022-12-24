//
//  Product.swift
//  OWLY
//
//  Created by Alex Danilkovas on 12/23/22.
//

import Foundation


struct Product: Identifiable {
    var id = UUID() //product id
    var name: String
    var image: String
    var bidPrice: Float
    var buyoutPrice: Float
    var timeRemaining: Int //time remaining in hours
    //add description and condition of item/product
}

//hardcoded products, upon introduction of servers these will be called back via api
var productList = [Product(name: "Aeropress Coffee Kit", image: "coffee1", bidPrice: 19.00, buyoutPrice: 30.00, timeRemaining: 29),
                   Product(name: "Grey Couch", image: "couch1", bidPrice: 250.00, buyoutPrice: 1000.00, timeRemaining: 59),
                   Product(name: "Black Dress", image: "dress1", bidPrice: 15.00, buyoutPrice: 25.00, timeRemaining: 13),
                   Product(name: "Desk Fan", image: "fan1", bidPrice: 10.00, buyoutPrice: 35.00, timeRemaining: 70),
                   Product(name: "Unused Sketchpad/Notebook", image: "notebook1", bidPrice: 4.00, buyoutPrice: 10.00, timeRemaining: 3),
                   Product(name: "Green Nike Blazers, Barely Used", image: "shoes2", bidPrice: 40.00, buyoutPrice: 100.00, timeRemaining: 47),
                   Product(name: "String/Fairy Lights", image: "stringlights1", bidPrice: 23.00, buyoutPrice: 25.00, timeRemaining: 2),
                   Product(name: "Metal Water Bottle", image: "waterbottle1", bidPrice: 5.00, buyoutPrice: 15.00, timeRemaining: 27),
                   Product(name: "Pink Vans (Lightly Used)", image: "shoes1", bidPrice: 25.00, buyoutPrice: 70.00, timeRemaining: 36)]
