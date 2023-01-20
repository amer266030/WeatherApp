//
//  DarkCards.swift
//  Weather_app
//
//  Created by Amer Alyusuf on 19/01/2023.
//

import SwiftUI

struct DarkCard: View {
    
    var selectedCity: CityWeather
    var imageName: String
    var title: String
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 16)
                .foregroundColor(Colors.darkBlue)
                .frame(width: UIScreen.main.bounds.width/2.4, height: UIScreen.main.bounds.width/2 * 0.7)
            
            VStack {
                HStack {
                    Image(systemName: imageName)
                        .font(.title)
                        .foregroundColor(Colors.white)
                    Spacer()
                }
                HStack {
                    Text(title)
                        .foregroundColor(Colors.white)
                        .font(.body)
                        .fontWeight(.thin)
                    
                    Spacer()
                }
                HStack {
                    if title == "Chances of Rain" {
                        Text("\(selectedCity.rainChances) %")
                            .foregroundColor(Colors.white)
                            .font(.body)
                            .bold()
                        
                    } else if title == "Lowest wind" {
                        Text("\(selectedCity.windMin)")
                            .foregroundColor(Colors.white)
                            .font(.body)
                            .bold()
                    } else {
                        Text("\(selectedCity.windMax)")
                            .foregroundColor(Colors.white)
                            .font(.body)
                            .bold()
                    }
                    Spacer()     
                }
            }
            .padding()
        }
    }
    
}
