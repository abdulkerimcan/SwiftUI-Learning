//
//  Buttons.swift
//  ChapterOne
//
//  Created by Abdulkerim Can on 3.08.2024.
//

import SwiftUI

struct EditButtonView: View {
    @State var animals = ["Cats", "Dogs", "Birds"]
    var body: some View {
        List {
            ForEach(animals,id: \.self) { animal in
                Text(animal)
            }
            .onDelete(perform: removeAnimal)
        }
        .toolbar {
            EditButton()
       }
        .navigationTitle("EditButtonView")
    }
    
    func removeAnimal(at offsets: IndexSet) {
        animals.remove(atOffsets: offsets)
    }
}

#Preview {
    EditButtonView()
}
