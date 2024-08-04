//
//  EditingRowView.swift
//  ChapterTwo
//
//  Created by Abdulkerim Can on 4.08.2024.
//

import SwiftUI

struct EditingRowView: View {
    @State private var countries = ["USA", "Canada", "Mexico", "England",
                                    "Spain", "Cameroon", "South Africa", "Japan", "South Korea"]
    var body: some View {
        NavigationStack {
            List {
                ForEach(countries, id: \.self) {
                    Text($0)
                }
                .onDelete(perform: deleteItem)
                .onMove(perform: moveItem)
            }
            .navigationTitle("Countries")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
            }
        }
        
    }
    
    private func deleteItem(at indexSet: IndexSet) {
        countries.remove(atOffsets: indexSet)
    }
    
    private func moveItem(at indexSet: IndexSet, destination: Int) {
        countries.move(fromOffsets: indexSet, toOffset: destination)
    }
}

#Preview {
    EditingRowView()
}
