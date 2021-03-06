//
//  Weather_AppApp.swift
//  Weather App
//
//  Created by MacBook Pro on 12/6/21.
//

import SwiftUI

@main
struct Weather_AppApp: App {
    var body: some Scene {
        WindowGroup {
            let WeatherService = WeatherService()
            let viewModel = WeatherViewModel(WeatherService: WeatherService)
            WeatherView(viewModel: viewModel )
        }
    }
}
