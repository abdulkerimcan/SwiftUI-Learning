//
//  ButtonView.swift
//  ChapterOne
//
//  Created by Abdulkerim Can on 3.08.2024.
//

import SwiftUI

struct ButtonView: View {
    @State var count = 0
    var body: some View {
        VStack {
            Text("Welcome to Button View")
            Text("current value:\(count)")
                .padding()
            Button {
                count += 1
            } label: {
                Text("Increase")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.blue)
                    .clipShape(.capsule)
            }
        }.navigationTitle("ButtonView")
    }
}

#Preview {
    ButtonView()
}
