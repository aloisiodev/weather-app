//
//  NetworkClient.swift
//  weather-app
//
//  Created by Aloisio Mello on 11/04/25.
//

import Foundation

protocol NetworkClientProtocol {
    func request<T: Decodable>(from url: URL) async throws -> T
}

final class NetworkClient: NetworkClientProtocol {
    func request<T>(from url: URL) async throws -> T where T : Decodable {
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        return try JSONDecoder().decode(T.self, from: data)
    }
}
