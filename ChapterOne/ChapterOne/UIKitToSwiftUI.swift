//
//  UIKitToSwiftUI.swift
//  ChapterOne
//
//  Created by Abdulkerim Can on 3.08.2024.
//

import SwiftUI

struct UIKitToSwiftUI: View {
    @State private var animate = true
    var body: some View {
        ActivityIndicator(animating: animate)
        HStack {
            Toggle("Toggle Activity", isOn: $animate)
        }.padding()
    }
}

#Preview {
    UIKitToSwiftUI()
}


struct ActivityIndicator: UIViewRepresentable {
    var animating: Bool
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if animating {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
}
