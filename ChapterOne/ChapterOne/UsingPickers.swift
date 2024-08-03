//
//  UsingPickers.swift
//  ChapterOne
//
//  Created by Abdulkerim Can on 3.08.2024.
//

import SwiftUI

struct UsingPickers: View {
    @State private var choice = 0
    @State private var showText = false
    @State private var transitOptions = ["Bike","Car", "Bus"]
    @State private var sliderVal: Float = 0
    @State private var stepVal = 0
    @State private var gameTime = Date()
    var body: some View {
        Form {
            Section {
                Picker("Transit Option", selection: $choice) {
                    ForEach(0 ..< transitOptions.count,id: \.self) { index in
                        Text("\(transitOptions[index])")
                    }
                }
                .pickerStyle(.segmented)
                Text("Current choice: \(choice)")
            }
            Section {
                Toggle("Show Text", isOn: $showText)
                if showText {
                    Text("The Text toggle is on")
                }
            }
            Section {
                Slider(value: $sliderVal, in: 0...100, step: 0.001)
                Text("Slider current value : \(sliderVal, specifier: "%.1f")")
            }
            
            Section {
                Stepper("Stepper", value: $stepVal, in: 0...5)
                Text("Stepper current value : \(stepVal)")
            }
            
            Section {
                DatePicker("Select a date", selection: $gameTime)
            }
            Section {
            DatePicker("Please select a date", selection: $gameTime, in: Date()...)
            }
        }
        
    }
}

#Preview {
    UsingPickers()
}
