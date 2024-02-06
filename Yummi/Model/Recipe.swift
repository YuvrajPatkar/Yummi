//
//  Recipes.swift
//  Yummi
//
//  Created by Patkar, Yuvraj (NA) on 02/02/2024.
//

import Foundation

struct Recipe {
    let Name: String
    let Ingredients: [Ingredient]
    let IsFavourite: Bool
    let Rating: Double
    
    
    #if DEBUG
    static var recipes: [Recipe] = [
        
        Recipe(
            Name: "Chicken Alfredo",
            Ingredients: [
                Ingredient(Name: "fettuccine", Quantity: 8, Unit: "ounces", Category: "pasta", ExpiryDate: "", Emoji: "🍝"),
                Ingredient(Name: "chicken breasts", Quantity: 2, Unit: "boneless, skinless", Category: "meat", ExpiryDate: "", Emoji: "🍗"),
                Ingredient(Name: "heavy cream", Quantity: 1, Unit: "cup", Category: "dairy", ExpiryDate: "", Emoji: "🥛"),
                Ingredient(Name: "Parmesan cheese", Quantity: 1/2, Unit: "cup", Category: "dairy", ExpiryDate: "", Emoji: "🧀"),
                Ingredient(Name: "butter", Quantity: 2, Unit: "tablespoons", Category: "dairy", ExpiryDate: "", Emoji: "🧈"),
                Ingredient(Name: "garlic", Quantity: 2, Unit: "cloves", Category: "vegetable", ExpiryDate: "", Emoji: "🧄")
            ],
            IsFavourite: true,
            Rating: 4.7),
                                    
        Recipe(
            Name: "Spaghetti Carbonara",
            Ingredients:
                [Ingredient(Name: "spaghetti", Quantity: 8, Unit: "ounces", Category: "pasta", ExpiryDate: "", Emoji: "🍝"),
                Ingredient(Name: "eggs", Quantity: 2, Unit: "large", Category: "dairy", ExpiryDate: "", Emoji: "🥚"),
                Ingredient(Name: "Parmesan cheese", Quantity: 1/2, Unit: "cup", Category: "dairy", ExpiryDate: "", Emoji: "🧀"),
                Ingredient(Name: "bacon", Quantity: 4, Unit: "slices", Category: "meat", ExpiryDate: "", Emoji: "🥓"),
                Ingredient(Name: "garlic", Quantity: 2, Unit: "cloves", Category: "vegetable", ExpiryDate: "", Emoji: "🧄")
            ],
            IsFavourite: true, 
            Rating: 9.2)
                                    
    ]
    #endif
}


