//
//  SheetView.swift
//  ChapterSeven
//
//  Created by Abdulkerim Can on 17.08.2024.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.cyan
                    .ignoresSafeArea()
                Text("Sheet With Navigation bar")
                    .foregroundStyle(.white)
            }
            .navigationTitle("SheetView")
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(.white, for: .navigationBar)
        }
    }
}

#Preview {
    SheetView()
}
