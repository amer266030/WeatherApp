//
//  Forecast.swift
//  Weather_app
//
//  Created by Amer Alyusuf on 20/01/2023.
//

import Foundation

struct Forecast: Identifiable {
    var id = UUID()
    var time: String
    var temperature: Int
}
