//
//  UsingLazyGridsView.swift
//  ChapterThree
//
//  Created by Abdulkerim Can on 4.08.2024.
//

import SwiftUI

struct UsingLazyGridsView: View {
    let columnSpec = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    let rowSpec = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    let colors: [Color] = [.green, .red, .yellow, .blue]
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columnSpec,spacing: 20) {
                    ForEach(0...1000,id: \.self) { item in
                        Text("Item \(item)")
                            .padding(EdgeInsets(top: 30, leading: 15, bottom: 30, trailing: 15))
                            .background(colors[item % colors.count])
                            .clipShape(.capsule)
                    }
                }
            }
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: rowSpec,spacing: 20) {
                    ForEach(0...1000,id: \.self) { item in
                        Text("Item \(item)")
                            .padding(EdgeInsets(top: 30, leading: 15, bottom: 30, trailing: 15))
                            .background(colors[item % colors.count])
                            .clipShape(.capsule)
                    }
                }
            }
        }
    }
}

#Preview {
    UsingLazyGridsView()
}
