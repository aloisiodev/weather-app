//
//  CityListViewPreview.swift
//  weather-app
//
//  Created by Aloisio Mello on 11/04/25.
//

import SwiftUI

struct CityListViewPreview: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(WeatherResponse.mockList, id: \.name) { city in
                        CityCardView(city: city)
                            .padding(.horizontal)
                    }
                }
                .padding(.top)
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.2), Color.white]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                .ignoresSafeArea()
            )
            .navigationTitle("WeatherApp")
        }
    }
}
