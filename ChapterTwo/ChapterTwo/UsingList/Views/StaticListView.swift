//
//  StaticList.swift
//  ChapterTwo
//
//  Created by Abdulkerim Can on 4.08.2024.
//

import SwiftUI

struct StaticList: View {
    let weatherData: [WeatherInfo]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(weatherData) { data in
                    WeatherRow(weather: data)
                }
            }
            .navigationTitle("Weathers")
        }
    }
}

#Preview {
    StaticList(weatherData: WeatherInfo.weatherData)
}

