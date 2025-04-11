//
//  WeatherIconView.swift
//  weather-app
//
//  Created by Aloisio Mello on 11/04/25.
//

import SwiftUI

struct WeatherIconView: View {
    let icon: String
    var size: CGFloat = 50
    
    var body: some View {
        if let url = WeatherIconUtils.iconURL(for: icon) {
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: size, height: size)
            } placeholder: {
                ProgressView()
            }
        }
    }
}

#Preview {
    WeatherIconView(icon: "01d", size: 100)
}
