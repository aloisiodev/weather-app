//
//  WeatherService.swift
//  weather-app
//
//  Created by Aloisio Mello on 11/04/25.
//

import Foundation

final class WeatherService {
    private let networkClient: NetworkClientProtocol
    
    init(networklClient: NetworkClientProtocol = NetworkClient()) {
        self.networkClient = networklClient
    }
    
    func fetchCurrentWeather(for city: String) async throws -> WeatherResponse {
        guard let url = WeatherAPI.currentWeather(city: city).url else {
            throw URLError(.badURL)
        }
        
        return try await networkClient.request(from: url)
    }
}
