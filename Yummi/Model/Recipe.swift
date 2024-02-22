//
//  Recipes.swift
//  Yummi
//
//  Created by Patkar, Yuvraj (NA) on 02/02/2024.
//

import Foundation

struct Recipe: Identifiable {
    let Name: String
    let Ingredients: [Ingredient]
    let IsFavourite: Bool
    let Rating: Double
    
    var id:String {
        Name
    }
    
    func displayInfo() -> String{
        return Name
        
    }
    
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
            Rating: 9.2),
        
        Recipe(
            Name: "Creamy Garlic Shrimp Pasta",
            Ingredients: 
                [Ingredient(Name: "linguine pasta", Quantity: 8, Unit: "ounces", Category: "pasta", ExpiryDate: "", Emoji: "🍝"),
                        Ingredient(Name: "shrimp", Quantity: 1, Unit: "pound", Category: "seafood", ExpiryDate: "", Emoji: "🍤"),
                        Ingredient(Name: "heavy cream", Quantity: 1, Unit: "cup", Category: "dairy", ExpiryDate: "", Emoji: "🥛"),
                        Ingredient(Name: "Parmesan cheese", Quantity: 1/2, Unit: "cup", Category: "dairy", ExpiryDate: "", Emoji: "🧀"),
                        Ingredient(Name: "butter", Quantity: 2, Unit: "tablespoons", Category: "dairy", ExpiryDate: "", Emoji: "🧈"),
                        Ingredient(Name: "garlic", Quantity: 3, Unit: "cloves", Category: "vegetable", ExpiryDate: "", Emoji: "🧄"),
                        Ingredient(Name: "fresh parsley", Quantity: 2, Unit: "tablespoons", Category: "herb", ExpiryDate: "", Emoji: "🌿"),
                        Ingredient(Name: "salt", Quantity: 1/2, Unit: "teaspoon", Category: "seasoning", ExpiryDate: "", Emoji: "🧂"),
                        Ingredient(Name: "black pepper", Quantity: 1/4, Unit: "teaspoon", Category: "seasoning", ExpiryDate: "", Emoji: "🌶")],
            
            IsFavourite: false, Rating: 7.9)
                                    
    ]
    #endif
}


