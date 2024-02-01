//
//  Foods.swift
//  Yummi
//
//  Created by Patkar, Yuvraj (NA) on 30/01/2024.
//

import Foundation

struct Ingredient {
    let Name: String
    let Quantity: Int
    let Unit: String
    let Category: String
    let ExpiryDate: String
    let Emoji: String

    func displayStats() -> String {
        return("""
            Name : \(Name)
            Quantity : \(Quantity)
            Unit : \(Unit)
            Category : \(Category)
            Expiry date : \(ExpiryDate)
        """
        )
    }
}

var foods = [Ingredient(Name: "Cheese", Quantity: 100, Unit: "Grams", Category: "Dairy", ExpiryDate: "08.02.24", Emoji: "🧀"),
             Ingredient(Name: "Juice", Quantity: 1, Unit: "Litre", Category: "Fruit", ExpiryDate: "12.03.24", Emoji: "🧃" ),
            Ingredient(Name: "Sushi", Quantity: 15, Unit: "Pieces", Category: "Seafood", ExpiryDate: "07.02.24", Emoji: "🍣")]

