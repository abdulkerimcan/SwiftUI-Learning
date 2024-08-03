//
//  MoreViewsAndControls.swift
//  ChapterOne
//
//  Created by Abdulkerim Can on 3.08.2024.
//

import SwiftUI

struct MoreViewsAndControls: View {
    @State private var progress = 0.5
    @State private var color = Color.red
    @State private var secondColor = Color.yellow
    @State private var someText = "Initial value"
    var body: some View {
        List {
            Section {
                ProgressView("Indeterminate progress view")
                ProgressView("Downloading",value: progress,total: 2)
                Button("More") {
                    if progress < 2 {
                        progress += 0.5
                    }
                }
            } header: {
                Text("Progress Views")
            }
            
            Section {
                Label("Slow", systemImage: "tortoise.fill")
                
                Label {
                    Text("Fast")
                        .font(.title)
                } icon: {
                    Circle()
                        .fill(.orange)
                        .frame(width: 40, height: 20, alignment: .center)
                        
                }
            } header: {
                Text("Labels")
            }
            
            Section {
                ColorPicker(selection: $color) {
                    Text("Pick My background")
                        .background(color)
                        .padding()
                }
                ColorPicker("Picker", selection: $secondColor)
            } header: {
                Text("Color Picker")
            }
            
            Section {
                Link("Youtube", destination: URL(string: "https://www.youtube.com")!)
            } header: {
                Text("Link")
            }
            
            Section {
               TextEditor(text: $someText)
                Text("Current editor Text: \(someText)")
            } header: {
                Text("text Editor")
            }
            
            
            Section {
                Menu("Actions") {
                    Button("Set textEditor text to 'magic'") {
                        someText = "magic"
                    }
                    
                    Button("Turn first picker green") {
                        color = .green
                    }
                    Menu("Acitons") {
                        Button("Set textEditor text to 'real magic'") {
                            someText = "real magic"
                        }
                        
                        Button("Turn first picker yellow") {
                            color = .yellow
                        }
                    }
                }
            } header: {
                Text("Menu")
            }
        }.listStyle(.grouped)
    }
}

#Preview {
    MoreViewsAndControls()
}
