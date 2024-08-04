//
//  EditableListsFieldsView.swift
//  ChapterTwo
//
//  Created by Abdulkerim Can on 4.08.2024.
//

import SwiftUI

struct EditableListsFieldsView: View {
    @State private var items = [ToDoItem(title: "Eat"), .init(title: "Sleep"), .init(title: "Code")]
    var body: some View {
        List($items) { $item in
            TextField("Todo item", text: $item.title)
            
        }
    }
}

#Preview {
    EditableListsFieldsView()
}
