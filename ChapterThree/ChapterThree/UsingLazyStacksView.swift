//
//  UsingLazyStacksView.swift
//  ChapterThree
//
//  Created by Abdulkerim Can on 4.08.2024.
//

import SwiftUI

struct UsingLazyStacksView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(1...1000,id: \.self) { item in
                    ListRow(id: item, type: "Horizontal")
                }
            }
        }.frame(height: 100,alignment: .center)
        
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(1...1000,id: \.self) { item in
                    ListRow(id: item, type: "Vertical")
                }
            }
        }
    }
}

#Preview {
    UsingLazyStacksView()
}
