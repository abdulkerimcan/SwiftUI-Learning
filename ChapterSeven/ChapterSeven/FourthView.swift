//
//  FourthView.swift
//  ChapterSeven
//
//  Created by Abdulkerim Can on 17.08.2024.
//

import SwiftUI

struct FourthView: View {
    @State private var isPresented = false
    var body: some View {
        ScrollView {
            Image(systemName: "capsule")
                .font(.system(size: 80))
                .foregroundColor(.red)
                .padding(.vertical,50)
            Text("This is the Fourth View")
                .foregroundStyle(.primary)
                .padding()
            
            Button("Show Sheet") {
                isPresented = true
            }.sheet(isPresented: $isPresented, content: {
                SheetView()
                    .presentationDetents([.fraction(0.75)])
                    .presentationDragIndicator(.visible)
            })
        }
        .navigationTitle("Fourth")
        .toolbarBackground(.quaternary, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        FourthView()
    }
}
