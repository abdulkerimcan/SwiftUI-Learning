//
//  Navigation.swift
//  ModernNavigation
//
//  Created by Abdulkerim Can on 17.08.2024.
//

import Foundation
import SwiftUI

final class Navigation: ObservableObject {
    @Published var path: NavigationPath = .init()
    func popToRoot() {
        path = .init()
    }
}
