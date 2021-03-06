//
//  ModelWeather.swift
//  Weather App
//
//  Created by MacBook Pro on 12/9/21.
//

import Foundation

public struct Weather{
    let city: String
    let temperature: String
    let description: String
    let iconName: String
    
    init(response: WeatherService.APIResponse){
        city = response.name
        temperature = "\(Int(response.main.temp))"
        description = response.weather.first?.description ?? ""
        iconName = response.weather.first?.iconName ?? ""
    }
}
