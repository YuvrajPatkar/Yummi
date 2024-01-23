//
//  ContentView.swift
//  Yummi
//
//  Created by Patkar, Yuvraj (NA) on 23/01/2024.
//

import SwiftUI

struct Ingredient {
    let Name: String
    let Quantity: Int
    let Unit: String
    let Category: String
    let ExpiryDate: String

    func displayStats() -> String {
        return("""
            Name is \(Name)
            Quantity is \(Quantity)
            Unit is \(Unit)
            Category is \(Category)
            Expiry date is \(ExpiryDate)
        """
        )
    }
}

struct ContentView: View {
    
    let tempIngredient = Ingredient(Name: "Cheese", Quantity: 100, Unit: "grams", Category: "Dairy", ExpiryDate: "08.02.24")
    
    var body: some View {
        VStack {
            Text(tempIngredient.displayStats())
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
