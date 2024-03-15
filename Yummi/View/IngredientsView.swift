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
        VStack(
            alignment: .leading, spacing: 20) {
                Form {
                    VStack() {
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
                        Spacer()
                        Button("Add Food") {
                            showingAddNewFood.toggle()
                        }
                        .sheet(isPresented: $showingAddNewFood) {
                            VStack{
                                Text("New food")
                                TextField("Food Name", text: $ingredientsViewModel.foodName)
                                Stepper("Food Quantity: \(ingredientsViewModel.foodQuantity)" , value: $ingredientsViewModel.foodQuantity, in: 0...Int.max)
                                TextField("Food Unit", text: $ingredientsViewModel.foodUnit)
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
}


#Preview {
    IngredientsView()
}
