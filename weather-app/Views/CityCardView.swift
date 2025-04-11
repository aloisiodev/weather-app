//
//  CityCardView.swift
//  weather-app
//
//  Created by Aloisio Mello on 11/04/25.
//

import SwiftUI

struct CityCardView: View {
    let city: WeatherResponse
    @State private var isVisible = false
    
    var body: some View {
        HStack(spacing: 16) {
            
            WeatherIconView(icon: city.weather.first?.icon ?? "")
            VStack(alignment: .leading, spacing: 8) {
                Text(city.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                
                Text("\(Int(city.main.temp))°C - \(city.weather.first?.description.capitalized ?? "")")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding()
        .background(Color(.systemBackground).opacity(0.9))
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)
        .opacity(isVisible ? 1 : 0)
        .offset(y: isVisible ? 0 : 20)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isVisible = true
            }
        }
    }
}

#Preview {
    CityCardView(city: .mock)
}
