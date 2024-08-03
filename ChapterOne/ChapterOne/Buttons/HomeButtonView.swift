//
//  HomeButtonView.swift
//  ChapterOne
//
//  Created by Abdulkerim Can on 3.08.2024.
//

import SwiftUI

struct HomeButtonView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 44) {
                NavigationLink("Buttons") {
                    ButtonView()
                }
                NavigationLink("EditButtons") {
                    EditButtonView()
                }
                NavigationLink("PasteButtons") {
                    PasteButtonView()
                }
                NavigationLink("MenuButtons") {
                    MenuButtonView()
                }
                NavigationLink("Detail about text") {
                    Text("Very long text that should not be displayed in")
                    .padding()
                    .navigationTitle(Text("Detail"))
                }
            }.navigationTitle(Text("Main View"))
        }
    }
}

#Preview {
    HomeButtonView()
}
