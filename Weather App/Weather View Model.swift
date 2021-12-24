//
//  WeatherViewModel.swift
//  Weather App
//
//  Created by MacBook Pro on 12/22/21.
//

import Foundation

private let defaultIcon = "?"
private let iconMap = [
    "Drizzle" : "🌧",
    "Thunderstorm" : "⛈",
    "Rain" : "🌧",
    "Snow" : "❄️",
    "Clear" : "🌞",
    "Clouds" : "☁️"
]

public class WeatherViewModel: ObservableObject {
    @Published var cityName: String = "City Name"
    @Published var temperature: String = "--"
    @Published var weatherDescription: String = "--"
    @Published var weatherIcon: String = defaultIcon
    
    public let WeatherService: WeatherService
    
    public init(WeatherService: WeatherService) {
        self.WeatherService = WeatherService
    }
    
    public func refresh(){
        WeatherService.loadWeatherData { weather in
            DispatchQueue.main.async {
                self.cityName = weather.city
                self.temperature = "\(weather.temperature)°C"
                self.weatherDescription = weather.description.capitalized
                self.weatherIcon = iconMap[weather.iconName] ?? defaultIcon
                
            }
        }
    }
}
