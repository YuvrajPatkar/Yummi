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

//@Observable
//class IngredientsViewModel {
//    
//    // only ever one shared view model object allowed
//    static let shared = IngredientsViewModel()
//
//    var newIngredientName: String
//    // TODO...
//
//    // ensures object can only be initialised internally
//    private init() {}
//
//}
//
//struct IngredientsView: View {
//    @State private var ingredientsViewModel = IngredientsViewModel.shared
//
//    var body: some View {
//        List {
//            Section {
//                ForEach(ingredientsViewModel.ingredients, id:\.self.name) { ingredient in
//                    Text(ingredient.name)
//                }
//            }
//
//            Section {
//                TextField("New ingredient name", $ingredientsViewModel.newIngredientName)
//                //.....
//    
//                // TODO: Requirements 4 & 5
//                Button {
//                    print("Adding new ingredient")
//                    let newIngredient = Ingredient(name: ingredientsViewModel.newIngredientName, ...)
//                    self.ingredientsViewModel.ingredients.append(newIngredient)
//                } label: {
//                    Text("Add ingredient")
//                }
//            }
//        }
//    }
//}
