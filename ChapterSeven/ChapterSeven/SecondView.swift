//
//  SecondView.swift
//  ChapterSeven
//
//  Created by Abdulkerim Can on 17.08.2024.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            Image(systemName: "square")
                .font(.system(size: 80))
                .foregroundColor(.cyan)
            Text("This is the Second View")
                .foregroundStyle(.primary)
                .padding()
            VStack(spacing: 40) {
                List {
                    NavigationLink("Show child A") {
                        ChildAView()
                    }
                    
                    NavigationLink("Show child B") {
                        ChildBView()
                    }
                }
                .listStyle(.inset)
                .frame(height: 160)
            }
        }
        .padding()
        .navigationTitle("Second")
    }
}

#Preview {
    NavigationStack {
        SecondView()
    }
}
