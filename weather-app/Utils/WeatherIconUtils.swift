//
//  WeatherIconUtils.swift
//  weather-app
//
//  Created by Aloisio Mello on 11/04/25.
//

import Foundation

enum WeatherIconUtils {
    static func iconURL(for icon: String, size: Int = 2) -> URL? {
        URL(string: "\(Environment.iconSetURL)img/wn/\(icon)@\(size)x.png")
    }
}
