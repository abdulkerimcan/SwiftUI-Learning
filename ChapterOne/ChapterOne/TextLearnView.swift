//
//  TextLearnView.swift
//  ChapterOne
//
//  Created by Abdulkerim Can on 2.08.2024.
//

import SwiftUI

struct TextLearnView: View {
    @State private var password = "1234"
    @State private var someText = "initial Text"
    var body: some View {
        VStack {
            SecureField("Enter a pasworrd", text: $password)
                .padding()
            Text("Password entered: \(password)")
                .italic()
            
            TextField("Enter some text", text: $someText)
            Text(someText)
                .font(.largeTitle)
                .underline()
            
            Text("Changing text color and make it bold")
                .foregroundStyle(.blue)
                .bold()
            
            Text("Use kerning to change space between characters in the text")
                .kerning(10.0)
            
            Text("Changing baseline offset")
                .baselineOffset(100)
            Text("strikethrough")
                .strikethrough()
            Text("This is a multiline text implemented in SwiftUI. The trailing modifier was added to the text. This text also implements multiple modifiers")
                        .background(.yellow)
                        .multilineTextAlignment(.trailing)
                        .lineSpacing(10)
        }
    }
}

#Preview {
    TextLearnView()
}
