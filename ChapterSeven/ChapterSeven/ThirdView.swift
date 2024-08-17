//
//  ThirdView.swift
//  ChapterSeven
//
//  Created by Abdulkerim Can on 17.08.2024.
//

import SwiftUI

struct ThirdView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack {
            ScrollView {
                Image(systemName: "triangle")
                    .font(.system(size: 80))
                    .foregroundColor(.cyan)
                Text("This is the Third View")
                    .foregroundStyle(.primary)
                    .padding()
            }
        }
        .padding()
        .navigationTitle("Third")
        .toolbarBackground(.quaternary, for: .navigationBar)
        .navigationBarBackButtonHidden()
        .toolbar {
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

#Preview {
    NavigationStack {
        ThirdView()
    }
}
