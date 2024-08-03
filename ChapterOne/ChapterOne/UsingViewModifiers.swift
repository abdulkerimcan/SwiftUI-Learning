//
//  UsingViewModifiers.swift
//  ChapterOne
//
//  Created by Abdulkerim Can on 3.08.2024.
//

import SwiftUI

struct UsingViewModifiers: View {
    var body: some View {
        VStack {
            Text("Perfect")
                .backgroundStyle(color: .blue)
            BlueCircle {
                Text("some text")
                Rectangle()
                    .fill(.red)
                    .frame(width: 40, height: 40)
            }
            BlueCircle {
                Text("Another Example")
            }
        }
        
    }
}

#Preview {
    UsingViewModifiers()
}

struct BackgroundStyle: ViewModifier {
    var bgColor: Color

    func body(content: Content) -> some View{
        content
            .frame(width: UIScreen.main.bounds.width * 0.3)
            .foregroundColor(.black)
            .padding()
            .background(bgColor)
            .clipShape(.capsule)
    }
}

extension View {
    func backgroundStyle(color: Color) -> some View {
        self.modifier(BackgroundStyle(bgColor: color))
    }
}

struct BlueCircle<Content: View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        HStack {
            content
            Spacer()
            Circle()
                .fill(.blue)
                .frame(width: 20, height: 30)
        }
        .padding()
    }
}
