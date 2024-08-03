//
//  TheStacksLearnView.swift
//  ChapterOne
//
//  Created by Abdulkerim Can on 2.08.2024.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack {
            VStack {
                Text("VStack Item 1")
                Text("VStack Item 2")
                Spacer()
                Divider()
                    .background(.black)
                Text("VStack Item 3")
            }.background(.blue)
            
            HStack {
                Text("HStack Item 1")
                Divider().background(.black)
                Text("HStack Item 2")
                Divider().background(.black)
                Spacer()
                Text("HStack Item 3")
            }.background(.red)
            
            ZStack {
                Text("ZStack Item 1")
                    .padding()
                    .background(.green)
                    .opacity(0.8)
                Text("ZStack Item 2")
                    .padding()
                    .background(.green)
                    .offset(x: 80,y: -400)
            }
            
            
        }
    }
}

#Preview {
    StackView()
}
