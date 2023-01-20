//
//  forecastCard.swift
//  Weather_app
//
//  Created by Amer Alyusuf on 19/01/2023.
//

import SwiftUI

struct ForecastCard: View {
    var forecast: Forecast
    
    var body: some View {
        ZStack {
            Colors.darkBlue
            
            VStack {
                Spacer()
                ZStack {
                    LinearGradient(colors: [Colors.lightBlue, Colors.husky], startPoint: .top, endPoint: .bottom)
                }
                .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4 )
            }
            
            VStack {
                Text(forecast.time)
                    .foregroundColor(Colors.white)
                    .font(.body)
                    .bold()
                    .padding(.top, 8)
                Spacer()
            }
            VStack(spacing: 12) {
                Spacer()
                
                if forecast.temperature > 22 {
                    Text("☀️")
                        .font(.largeTitle)
                } else if forecast.temperature > 17 {
                    Text("🌤️")
                        .font(.largeTitle)
                } else if forecast.temperature > 10 {
                    Text("🌧️")
                        .font(.largeTitle)
                } else if forecast.temperature > 5 {
                    Text("⛈️")
                        .font(.largeTitle)
                } else if forecast.temperature > 0 {
                    Text("🌨️")
                        .font(.largeTitle)
                } else if forecast.temperature <= 0 {
                    Text("❄️")
                        .font(.largeTitle)
                }
                
                Text("\(forecast.temperature) ºC")
                    .foregroundColor(Color.black)
                    .font(.body)
                    .bold()
            }
            .padding(.bottom)
        }
        .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/2.9)
        .cornerRadius(24)
    }
}

