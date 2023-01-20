//
//  Weather.swift
//  Weather_app
//
//  Created by Amer Alyusuf on 19/01/2023.
//

import Foundation

struct CityWeather: Identifiable, Equatable {
    var id = UUID()
    var city: String
    var temprature: Int
    var rainChances: Int
    var windMin: Int
    var windMax: Int
    var forecast: [Forecast]
    
    static func == (lhs: CityWeather, rhs: CityWeather) -> Bool {
        lhs.id == rhs.id
    }
    
    static var weathers: [CityWeather] = [
        CityWeather(city: "Rio", temprature: 10, rainChances: 50, windMin: 10, windMax: 30, forecast: [Forecast(time: "14:00", temperature: 8), Forecast(time: "15:00", temperature: 10), Forecast(time: "16:00", temperature: 5), Forecast(time: "17:00", temperature: 12)]),
        
        CityWeather(city: "Alaska",temprature: -10, rainChances: 75, windMin: 40, windMax: 50, forecast: [Forecast(time: "14:00", temperature: -12), Forecast(time: "15:00", temperature: 0), Forecast(time: "16:00", temperature: 1), Forecast(time: "17:00", temperature: 5)]),
        
        CityWeather(city: "Los Angeles",temprature: 30, rainChances: 20, windMin: 25, windMax: 40, forecast: [Forecast(time: "14:00", temperature: 25), Forecast(time: "15:00", temperature: 22), Forecast(time: "16:00", temperature: 30), Forecast(time: "17:00", temperature: 35)])
    ]
}
