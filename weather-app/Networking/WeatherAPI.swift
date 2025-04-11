//
//  WeatherAPI.swift
//  weather-app
//
//  Created by Aloisio Mello on 11/04/25.
//

import Foundation

enum WeatherAPI {
    case currentWeather(city: String)
}


extension WeatherAPI {
    var path: String {
        switch self {
        case .currentWeather:
            return "data/2.5/weather"
        }
    }
    
    var queryParameters: [URLQueryItem] {
        switch self {
        case .currentWeather(let city):
            return [
                URLQueryItem(name: "q", value: city),
                URLQueryItem(name: "appid", value: Environment.apiKey),
                URLQueryItem(name: "units", value: "metric"),
                URLQueryItem(name: "lang", value: Environment.localization),
            ]
        }
    }
    
    var url: URL? {
        var components = URLComponents(string: Environment.baseURL)
        components?.path += path
        components?.queryItems = queryParameters
        return components?.url
    }
}
