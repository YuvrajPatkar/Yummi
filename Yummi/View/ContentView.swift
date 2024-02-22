//
//  ContentView.swift
//  Yummi
//
//  Created by Patkar, Yuvraj (NA) on 22/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isRecipesView: Bool = true
    var body: some View {
        VStack {
            Toggle("Show Ingredients", isOn: $isRecipesView)
            if isRecipesView {
                RecipesView(recipes: Recipe.recipes)
            }
            else {
                IngredientsView()
            }
        }
    }
}

#Preview {
    ContentView()
}
