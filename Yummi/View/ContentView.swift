//
//  ContentView.swift
//  Yummi
//
//  Created by Patkar, Yuvraj (NA) on 23/01/2024.
//

import SwiftUI
import Foundation


struct ContentView: View {
    
    @State private var tempIngredientIndex = 0
    
    @State private var foodName = ""
    @State private var foodQuantity = 0
    @State private var foodUnit = ""
    @State private var foodCategory = ""
    @State private var foodExpiryDate = ""
    @State private var foodEmoji = ""
    
    
    
    var body: some View {
        VStack(
            alignment: .leading, spacing: 20) {
            Form {
                VStack() {
                    Text(Ingredient.foods[tempIngredientIndex].displayStats())
                    Text(Ingredient.foods[tempIngredientIndex].Emoji)
                        .font(.system(size: 100))
                    Button("Next food") {
                        if tempIngredientIndex == Ingredient.foods.count - 1{
                            tempIngredientIndex = 0
                        } else {
                            tempIngredientIndex += 1
                        }
                    }
                }
            }
            .padding()
            Form {
                VStack{
                    Text("New food")
                    TextField("Food Name", text: $foodName)
                    Stepper("Food Quantity: \(foodQuantity)" , value: $foodQuantity, in: 0...Int.max)
                    TextField("Food Unit", text: $foodUnit)
                    TextField("Food Category", text: $foodCategory)
                    TextField("Food Expiry Date", text: $foodExpiryDate)
                    TextField("Food Emoji", text: $foodEmoji)
                
                }
                    
                    Button("Add Ingredient") {
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
            }
    }
}


#Preview {
    ContentView()
}
