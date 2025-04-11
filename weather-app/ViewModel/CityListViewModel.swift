//
//  CityListViewModel.swift
//  weather-app
//
//  Created by Aloisio Mello on 11/04/25.
//

import Foundation

@MainActor
final class CityListViewModel: ObservableObject {
    @Published var searchText = ""
    @Published var cities: [WeatherResponse] = []
    @Published var isLoading = false
    
    private let service = WeatherService()
    
    func searchCity() async {
        guard !searchText.isEmpty else { return }
        
        isLoading = true
        
        defer { isLoading = false }
        
        do {
            let weather = try await service.fetchCurrentWeather(for: searchText)
            cities = [weather]
        } catch {
            print("Errror: \(error)")
            cities = []
        }
    }
}
