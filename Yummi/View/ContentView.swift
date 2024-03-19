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
        TabView{
            IngredientsView()
                .tabItem {
                    Label("Pantry", systemImage: "ant.fill")
                }
            SecretView()
                .tabItem {
                    Label(" ", systemImage: NSTemporaryDirectory())
                }
            RecipesView(recipes: Recipe.recipes)
                .tabItem {
                    Label("Recipes", systemImage: "faceid")
                }
        }
    }
}

#Preview {
    ContentView()
}
