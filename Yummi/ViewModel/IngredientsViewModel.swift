//
//  IngredientsViewModel.swift
//  Yummi
//
//  Created by Patkar, Yuvraj (NA) on 29/02/2024.
//

import Foundation

class IngredientsViewModel: ObservableObject {
    @Published var tempIngredientIndex = 0
    @Published var foodName = ""
    @Published var foodQuantity = 0
    @Published var foodUnit = ""
    @Published var foodCategory = ""
    @Published var foodExpiryDate = ""
    @Published var foodEmoji = ""
    
    func addNewIngredient() {
        Ingredient.foods.append(Ingredient(Name: foodName, Quantity: foodQuantity, Unit: foodUnit, Category: foodCategory, ExpiryDate: foodExpiryDate, Emoji: foodEmoji))
        foodName = ""
        foodQuantity = 0
        foodUnit = ""
        foodCategory = ""
        foodExpiryDate = ""
        foodEmoji = ""
        
        tempIngredientIndex = Ingredient.foods.count - 1
        
        
        
    }
}
