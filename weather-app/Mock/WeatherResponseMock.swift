//
//  WeatherResponseMock.swift
//  weather-app
//
//  Created by Aloisio Mello on 11/04/25.
//

extension WeatherResponse {
    static var mock: WeatherResponse {
        WeatherResponse(
            coord: Coord(lon: -46.63, lat: -23.55),
            weather: [
                Weather(
                    id: 800,
                    main: "Clear",
                    description: "céu limpo",
                    icon: "01d"
                )
            ],
            base: "stations",
            main: Main(
                temp: 26.0,
                feelsLike: 27.0,
                tempMin: 24.0,
                tempMax: 28.0,
                pressure: 1012,
                humidity: 60,
                seaLevel: nil,
                grndLevel: nil
            ),
            visibility: 10000,
            wind: Wind(
                speed: 3.6,
                deg: 90
            ),
            clouds: Clouds(
                all: 0
            ),
            dt: 1586468027,
            sys: Sys(
                type: 1,
                id: 8333,
                country: "BR",
                sunrise: 1586426017,
                sunset: 1586469440
            ),
            timezone: -10800,
            id: 3448439,
            name: "São Paulo",
            cod: 200
        )
    }
}

extension WeatherResponse {
    static var mockList: [WeatherResponse] {
        [
            WeatherResponse(
                coord: Coord(lon: -46.63, lat: -23.55),
                weather: [Weather(id: 800, main: "Clear", description: "céu limpo", icon: "01d")],
                base: "stations",
                main: Main(temp: 26.0, feelsLike: 27.0, tempMin: 24.0, tempMax: 28.0, pressure: 1012, humidity: 60, seaLevel: nil, grndLevel: nil),
                visibility: 10000,
                wind: Wind(speed: 3.6, deg: 90),
                clouds: Clouds(all: 0),
                dt: 1586468027,
                sys: Sys(type: 1, id: 8333, country: "BR", sunrise: 1586426017, sunset: 1586469440),
                timezone: -10800,
                id: 3448439,
                name: "São Paulo",
                cod: 200
            ),
            WeatherResponse(
                coord: Coord(lon: -43.17, lat: -22.91),
                weather: [Weather(id: 801, main: "Clouds", description: "poucas nuvens", icon: "02d")],
                base: "stations",
                main: Main(temp: 28.0, feelsLike: 29.0, tempMin: 26.0, tempMax: 30.0, pressure: 1010, humidity: 65, seaLevel: nil, grndLevel: nil),
                visibility: 10000,
                wind: Wind(speed: 2.1, deg: 180),
                clouds: Clouds(all: 20),
                dt: 1586468027,
                sys: Sys(type: 1, id: 8334, country: "BR", sunrise: 1586426017, sunset: 1586469440),
                timezone: -10800,
                id: 3451190,
                name: "Rio de Janeiro",
                cod: 200
            ),
            WeatherResponse(
                coord: Coord(lon: -51.23, lat: -30.03),
                weather: [Weather(id: 802, main: "Clouds", description: "nuvens dispersas", icon: "03d")],
                base: "stations",
                main: Main(temp: 22.0, feelsLike: 23.0, tempMin: 20.0, tempMax: 24.0, pressure: 1015, humidity: 70, seaLevel: nil, grndLevel: nil),
                visibility: 10000,
                wind: Wind(speed: 5.0, deg: 250),
                clouds: Clouds(all: 40),
                dt: 1586468027,
                sys: Sys(type: 1, id: 8335, country: "BR", sunrise: 1586426017, sunset: 1586469440),
                timezone: -10800,
                id: 3452925,
                name: "Porto Alegre",
                cod: 200
            )
        ]
    }
}
