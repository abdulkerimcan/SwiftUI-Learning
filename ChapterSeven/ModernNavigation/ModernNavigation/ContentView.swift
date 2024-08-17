//
//  ContentView.swift
//  ModernNavigation
//
//  Created by Abdulkerim Can on 17.08.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var navigation = Navigation()
    @StateObject private var storage = Storage(food: Food.samples)
    var body: some View {
        NavigationStack(path: $navigation.path) {
            List {
                Section("Categories") {
                    ForEach(Category.allCases) { category in
                        NavigationLink(category.name, value: category)
                    } }
                Section("Favorites") {
                    if storage.favorites.isEmpty {
                        Text("No favorites added")
                    } else {
                        ForEach(storage.favorites) { food in
                            NavigationLink(value: food) {
                                FoodRowView(food: food)
                            }
                        } }
                } }
            .navigationTitle("My Food")
            .navigationDestination(for: Category.self) { category in
                CategoryView(category: category)
                    .environmentObject(storage)
            }
            .navigationDestination(for: Food.self) { food in
                FoodView(food: food)
                    .environmentObject(navigation)
                    .environmentObject(storage)
            } }
    }
}

#Preview {
    ContentView()
}
