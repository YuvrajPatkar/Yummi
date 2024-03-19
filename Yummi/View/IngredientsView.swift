//
//  IngredientsView.swift
//  Yummi
//
//  Created by Patkar, Yuvraj (NA) on 22/02/2024.
//

import SwiftUI
import Foundation


struct IngredientsView: View {
    
    @StateObject var ingredientsViewModel: IngredientsViewModel = IngredientsViewModel()
    @State private var showingAddNewFood = false
    
    var body: some View {
        Form {
            Section {
                Text(Ingredient.foods[ingredientsViewModel.tempIngredientIndex].displayStats())
                Text(Ingredient.foods[ingredientsViewModel.tempIngredientIndex].Emoji)
                    .font(.system(size: 100))
                Button("Next food") {
                    if ingredientsViewModel.tempIngredientIndex == Ingredient.foods.count - 1{
                        ingredientsViewModel.tempIngredientIndex = 0
                    } else {
                        ingredientsViewModel.tempIngredientIndex += 1
                    }
                }
                
            }
            
             Section {
                Button("Add Food") {
                    showingAddNewFood.toggle()
                }
                .sheet(isPresented: $showingAddNewFood) {
                    Form{
                        TextField("Food Name", text: $ingredientsViewModel.foodName)
                        Stepper("Food Quantity: \(ingredientsViewModel.foodQuantity)" , value: $ingredientsViewModel.foodQuantity, in: 0...Int.max)
                        Picker("Food Unit", selection: $ingredientsViewModel.foodUnit) {
                            Text(MassUnit.grams.rawValue)
                            Text(MassUnit.kg.rawValue)
                            Text(MassUnit.ml.rawValue)
                            Text(MassUnit.l.rawValue)
                            Text(MassUnit.pints.rawValue)
                            Text(MassUnit.quart.rawValue)
                            Text(MassUnit.gallon.rawValue)
                            Text(MassUnit.cup.rawValue)
                            Text(MassUnit.cans.rawValue)
                            Text(MassUnit.bottle.rawValue)
                            
                            
                          }
                        TextField("Food Category", text: $ingredientsViewModel.foodCategory)
                        TextField("Food Expiry Date", text: $ingredientsViewModel.foodExpiryDate)
                        TextField("Food Emoji", text: $ingredientsViewModel.foodEmoji)
                        Button("Add Ingredient") {
                            ingredientsViewModel.addNewIngredient()
                            showingAddNewFood.toggle()
                            
                            
                        }
                    }
                    
                }
            }
            
        }
    }
}


#Preview {
    IngredientsView()
}
