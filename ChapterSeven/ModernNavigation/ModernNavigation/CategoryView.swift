//
//  CategoryView.swift
//  ModernNavigation
//
//  Created by Abdulkerim Can on 17.08.2024.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject private var storage: Storage
    var category: Category
    var color: Color {
        switch category {
        case .meat: .red
        case .vegetable: .green
        case .fruit: .yellow
        }
    }
    var body: some View {
        List(storage.food(in: category)) { food in
            NavigationLink(value: food) {
                FoodRowView(food: food)
            }
        }.navigationTitle(category.name)
    }
}

#Preview {
    NavigationStack {
        CategoryView(category: .fruit)
            .environmentObject(Storage(food: Food.samples))
    }
}
