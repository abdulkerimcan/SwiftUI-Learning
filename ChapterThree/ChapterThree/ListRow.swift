//
//  ListRow.swift
//  ChapterThree
//
//  Created by Abdulkerim Can on 4.08.2024.
//

import SwiftUI

struct ListRow: View {
    let id: Int
    let type: String
    init(id: Int, type: String) {
        print("Loading \(type) item \(id)")
        self.id = id
        self.type = type
    }
    var body: some View {
        Text("\(type) \(id)").padding()
    }
}

#Preview {
    ListRow(id: 0, type: "0")
}
