//
//  ChildAView.swift
//  ChapterSeven
//
//  Created by Abdulkerim Can on 17.08.2024.
//

import SwiftUI

struct ChildAView: View {
    @State private var title = "Child A"
    var body: some View {
        VStack {
            Image(systemName: "a.square")
                .font(.system(size: 120))
                .foregroundStyle(.yellow)
            Text("This is child A View ")
                .foregroundStyle(.primary)
                .padding()
        }
        .navigationTitle($title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ChildAView()
    }
}
