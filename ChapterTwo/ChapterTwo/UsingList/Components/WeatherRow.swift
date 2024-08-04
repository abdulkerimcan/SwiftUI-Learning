//
//  WeatherRow.swift
//  ChapterTwo
//
//  Created by Abdulkerim Can on 4.08.2024.
//

import SwiftUI

struct WeatherRow: View {
    var weather: WeatherInfo
    var body: some View {
        HStack {
            Image(systemName: weather.image)
                .frame(width: 50,alignment: .leading)
            
            Text("\(weather.temp)°F")
                .frame(width: 80, alignment: .leading)
            Text(weather.city)
        }
        .font(.system(size: 25))
        .padding()
    }
}

#Preview {
    WeatherRow(weather: WeatherInfo(image: "snow", temp: 5, city: "New York"))
}
