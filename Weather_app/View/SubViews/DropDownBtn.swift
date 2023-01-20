//
//  DropDownBtn.swift
//  Weather_app
//
//  Created by Amer Alyusuf on 20/01/2023.
//

import SwiftUI

struct DropDownBtn: View {
    @Binding var selectedCity: CityWeather
    var cityWeather: CityWeather
    var body: some View {
        Button {
            selectedCity = cityWeather
        } label: {
            Text(cityWeather.city)
                .foregroundColor(Colors.darkBlue)
                .font(.body)
        }
    }
}
