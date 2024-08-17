//
//  Category.swift
//  ModernNavigation
//
//  Created by Abdulkerim Can on 17.08.2024.
//

import Foundation

enum Category: Int, Identifiable, CaseIterable, Hashable {
    case meat
    case vegetable
    case fruit
    var id: Int { rawValue }
    
    var name: String {
        switch self {
        case .fruit: "Fruit"
        case .meat: "Meat"
        case .vegetable: "Vegetable"
        }
    }
}
