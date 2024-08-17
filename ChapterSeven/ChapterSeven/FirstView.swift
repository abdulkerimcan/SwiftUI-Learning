//
//  FirstView.swift
//  ChapterSeven
//
//  Created by Abdulkerim Can on 17.08.2024.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            Image(systemName: "circle")
                .font(.system(size: 80))
                .foregroundColor(.cyan)
            Text("This is the First View")
                .foregroundStyle(.primary)
                .padding()
            VStack(spacing: 40) {
                NavigationLink("Show child A") {
                    ChildAView()
                }
                
                NavigationLink("Show child B") {
                    ChildBView()
                }
            }
        }
        .padding()
        .navigationTitle("First")
    }
}

#Preview {
    NavigationStack {
        FirstView()
    }
}
