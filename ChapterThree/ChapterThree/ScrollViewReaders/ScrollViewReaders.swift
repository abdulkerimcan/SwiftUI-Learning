//
//  ScrollViewReaders.swift
//  ChapterThree
//
//  Created by Abdulkerim Can on 4.08.2024.
//

import SwiftUI

struct ScrollViewReaders: View {
    @State private var scrolledId: CharacterInfo.ID?
    var body: some View {
        HStack {
            VStack {
                Text("iOS 17+")
                    .font(.title)
                    .foregroundStyle(.blue)
                ScrollView {
                    LazyVStack {
                        Button("Go letter Q") {
                            scrolledId = 16
                        }
                        .padding()
                        .background(.blue)
                        .tint(.yellow)
                        
                        ForEach(CharacterInfo.charArray) { item in
                            Image(systemName: item.name)
                                .font(.largeTitle)
                                .foregroundStyle(.blue)
                                .frame(width: 90,height: 90)
                                .background(.yellow)
                                .padding()
                        }
                        
                        Button("Go to letter G") {
                            withAnimation {
                                scrolledId = 6
                            }
                        }
                    }
                }
                .scrollPosition(id: $scrolledId)
            }
            
            VStack {
                Text("iOS 14+")
                    .font(.title)
                    .foregroundStyle(.blue)
                ScrollView {
                    ScrollViewReader { proxy in
                        Button("Go letter Q") {
                            proxy.scrollTo(16)
                        }
                        .padding()
                        .background(.blue)
                        .tint(.yellow)
                        
                        ForEach(CharacterInfo.charArray) { item in
                            Image(systemName: item.name)
                                .font(.largeTitle)
                                .foregroundStyle(.blue)
                                .frame(width: 90,height: 90)
                                .background(.yellow)
                                .padding()
                        }
                        
                        Button("Go to letter G") {
                            withAnimation {
                                proxy.scrollTo(6, anchor: .top)
                            }
                        }

                    }
                }
            }.padding(.horizontal)
        }
    }
}

#Preview {
    ScrollViewReaders()
}
