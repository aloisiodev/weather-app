//
//  ContentView.swift
//  weather-app
//
//  Created by Aloisio Mello on 11/04/25.
//

import SwiftUI

struct CityListView: View {
    @StateObject private var viewModel = CityListViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(viewModel.cities, id: \.name) { city in
                        NavigationLink(destination: WeatherDetailView(city: city)) {
                            CityCardView(city: city)
                                .padding(.horizontal)
                        }
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
            .navigationTitle("Qual a temperatura?")
            .searchable(text: $viewModel.searchText)
            .onSubmit(of: .search) {
                Task {
                    await viewModel.searchCity()
                }
            }
            .overlay {
                if viewModel.isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .scaleEffect(1.5)
                }
            }
        }
    }
}


#Preview {
    CityListViewPreview()
}
