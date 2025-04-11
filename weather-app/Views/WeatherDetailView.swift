//
//  WeatherDetailView.swift
//  weather-app
//
//  Created by Aloisio Mello on 11/04/25.
//

import SwiftUI

struct WeatherDetailView: View {
    let city: WeatherResponse
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Text(city.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .padding(.top)
                
                WeatherIconView(icon: city.weather.first?.icon ?? "", size: 150)
                
                Text("\(Int(city.main.temp))°C")
                    .font(.system(size: 64, weight: .bold))
                    .foregroundColor(.primary)
                
                if let description = city.weather.first?.description {
                    Text(description.capitalized)
                        .font(.title3)
                        .foregroundColor(.secondary)
                }
                
                Divider()
                
                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Label("Sensação Térmica", systemImage: "thermometer.sun.fill")
                        Spacer()
                        Text("\(Int(city.main.feelsLike))°C")
                    }
                    
                    HStack {
                        Label("Humidade", systemImage: "drop.fill")
                        Spacer()
                        Text("\(city.main.humidity)%")
                    }
                    
                    HStack {
                        Label("Pressão", systemImage: "gauge")
                        Spacer()
                        Text("\(city.main.pressure) hPa")
                    }
                    
                    HStack {
                        Label("Velocidade do Vento", systemImage: "wind")
                        Spacer()
                        Text("\(city.wind.speed, specifier: "%.1f") m/s")
                    }
                }
                .font(.body)
                .padding(.horizontal)
                
                Spacer()
            }
            .padding()
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.3), Color.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea()
        )
    }
}

#Preview {
    WeatherDetailView(city: .mock)
}
