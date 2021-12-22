//
//  ContentView.swift
//  Weather App
//
//  Created by MacBook Pro on 12/6/21.
//

import SwiftUI

struct WeatherView: View {
    
    @ObservedObject var viewModel: WeatherViewModel
    var body: some View {
        VStack {
            Text("viewModel.cityName")
                .font(.largeTitle)
                .padding()
            Text ("viewModel.temperature")
                .font(.system(size: 70))
                .bold()
            Text ("viewModel.")
                .font(.largeTitle)
                .padding()
            Text ("viewModel.")
             
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(viewModel: )
    }
}

 
