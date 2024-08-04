//
//  AddingRowView.swift
//  ChapterTwo
//
//  Created by Abdulkerim Can on 4.08.2024.
//

import SwiftUI

struct AddingRowView: View {
    @State private var numbers = [1, 2, 3, 4]
    var body: some View {
        NavigationStack {
            List {
                ForEach(numbers,id: \.self) {
                    Text("Number \($0)")
                }
            }
            .navigationTitle("Number List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Add") {
                    addItemToRow()
                }
            }
        }
    }
    private func addItemToRow() {
        self.numbers.append(Int.random(in: 5 ..< 100))
    }
}

#Preview {
    AddingRowView()
}
