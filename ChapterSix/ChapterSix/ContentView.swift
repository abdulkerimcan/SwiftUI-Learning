//
//  ContentView.swift
//  ChapterSix
//
//  Created by Abdulkerim Can on 17.08.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var changeText: Bool = false
    @State private var displayedText: String = "Tap to change text"
    
    @State private var showDialog = false
    @State private var title: String = "Confirmation Dialog"
    
    @State private var isSheetPresented = false
    @State private var isSheetWithNavPresented = false
    @State private var isFullScreenCoverPresented = false
    
    @State private var showPopover = false
    
    var body: some View {
        VStack(spacing: 40) {
            Button(displayedText) {
                changeText = true
            }
            .alert("Changing Text", isPresented: $changeText) {
                Button("Yes", role: .destructive) {
                    displayedText = if (displayedText == "Stay Foolish") {
                        "Stay Hungry" } else {
                            "Stay Foolish"
                        }
                }
                Button("Do nothing", role: .cancel) {}
            } message: {
                Text("Are you sure to confirm")
            }
            
            
            Button("Present Confirmation Dialog") {
                showDialog = true
            }
            .confirmationDialog(title, isPresented: $showDialog) {
                Button("Save") {
                    print("save")
                }
                Button("Print") {
                    print("print")
                }
                Button("Update", role: .destructive) {
                    print("update")
                }
            } message: {
                Text("Use confirmation dialogs")
            }
            
            
            Button("Show sheet with drag") {
                isSheetPresented = true
            }.sheet(isPresented: $isSheetPresented, content: {
                SheetView()
                    .presentationDragIndicator(.visible)
                
            })
            
            Button("Show sheet with nav bar") {
                isSheetWithNavPresented = true
            }
            .sheet(isPresented: $isSheetWithNavPresented) {
                print("sheet dismissed")
            } content: {
                SheetWithNavBar(text: "Sheet with nav bar and presentation detends")
                    .presentationDetents([.medium,.large])
                    .presentationBackgroundInteraction(.enabled)
            }
            
            Button("Show full screen") {
                isFullScreenCoverPresented = true
            }
            .fullScreenCover(isPresented: $isFullScreenCoverPresented, content: {
                SheetWithNavBar(text: "Full Screen Cover with nav bar")
            })
            // Try int on iPad
            Button("Show Popover") {
                showPopover = true
            }
            .popover(isPresented: $showPopover, content: {
                Text("Pop Over Content")
                    .font(.system(size: 20))
                    .padding()
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct SheetView: View {
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            Text("This is the sheet")
        }
    }
}

struct SheetWithNavBar: View {
    var text: String
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green
                    .ignoresSafeArea()
                
                Text(text)
            }
            .navigationTitle(Text("Sheet title"))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Button("Dismiss") {
                    dismiss()
                }
            }
        }
    }
}
