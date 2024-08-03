//
//  UsingImages.swift
//  ChapterOne
//
//  Created by Abdulkerim Can on 3.08.2024.
//
import Foundation
import SwiftUI

struct UsingImages: View {
    var body: some View {
        VStack {
            Image(.dogs1)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image(.dogAndNature)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300,height: 200)
                .clipShape(.circle)
                .overlay(Circle().stroke(.blue,lineWidth: 6))
                .shadow(radius: 10)
            
            Image(uiImage: UIImage(resource: .dog2))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200,height: 200)
        }
    }
}

#Preview {
    UsingImages()
}
