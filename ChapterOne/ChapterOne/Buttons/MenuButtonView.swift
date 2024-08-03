//
//  MenuButtonView.swift
//  ChapterOne
//
//  Created by Abdulkerim Can on 3.08.2024.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        Menu("Choose a Country") {
            Button("Canada") {
                print("Canada")
            }
            Button("USA") {
                print("USA")
            }
            Button("UK") {
                print("UK")
            }
        }.navigationTitle("MenuButtons")
    }
}

#Preview {
    MenuButtonView()
}
