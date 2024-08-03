//
//  PasteButtonView.swift
//  ChapterOne
//
//  Created by Abdulkerim Can on 3.08.2024.
//

import SwiftUI
//Only available in  macOS
struct PasteButtonView: View {
    @State var text  = String()
    var body: some View {
        VStack{
                    Text("PasteButton controls how you paste in macOS but is not available in iOS. For more information, check the \"See also\" section of this recipe")
        .padding() }
        .navigationTitle("PasteButton")
    }
}

#Preview {
    PasteButtonView()
}
