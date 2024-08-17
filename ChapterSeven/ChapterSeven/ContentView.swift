//
//  ContentView.swift
//  ChapterSeven
//
//  Created by Abdulkerim Can on 17.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Show First View") {
                    FirstView()
                }
                
                NavigationLink("Show Second View") {
                    SecondView()
                }
                
                NavigationLink("Show Third View") {
                    ThirdView()
                }
                
                NavigationLink("Show Fourth View") {
                    FourthView()
                }
                
            }
            .navigationTitle("Top Level")
        }
        .tint(.teal)
    }
}

#Preview {
    ContentView()
}
