//
//  Home.swift
//  Weather_app
//
//  Created by Amer Alyusuf on 19/01/2023.
//

import SwiftUI

struct Home: View {
    
    var weathers = CityWeather.weathers
    @State private var selectedCity: CityWeather = CityWeather.weathers.first!
    
    var body: some View {
        
        ZStack {
            Colors.lightBlue
                .ignoresSafeArea(.all, edges: [.top, .horizontal])
            
            VStack(spacing: 0) {
                
                // MARK: - Navigation Text
                HStack {
                    Text("Date: 22/04")
                        .font(.title3)
                        .foregroundColor(Colors.white)
                    
                    Spacer()
                    
                    Menu {
                        ForEach(weathers) { weather in
                            DropDownBtn(selectedCity: $selectedCity, cityWeather: weather)
                        }
                    } label: {
                        VStack() {
                            Image(systemName: "tray.and.arrow.down")
                               .foregroundColor(Colors.white)
                               .font(.title)
                            
                            Text("Change City")
                               .foregroundColor(Colors.white)
                               .font(.callout)
                        }
                    }
                }
                .padding()
                 
                // MARK: - Country Text
                ZStack {
                    HStack(spacing: 20) {
                        Text(selectedCity.city)
                            .font(.largeTitle)
                            .foregroundColor(Color.black)
                            .bold()
                    }
                    
                    HStack {
                        
                    }
                }
                .padding()
                
                // MARK: - Image Row
                HStack {
                    Text("\(selectedCity.temprature)")
                        .font(.system(size: 80))
                        .foregroundColor(Colors.white)
                        .fontWeight(.heavy)
                    Text("ºC")
                        .font(.system(size: 50))
                        .foregroundColor(Colors.white)
                        .fontWeight(.regular)
                    
                    Spacer()
                    
                    if selectedCity.temprature > 22 {
                        Text("☀️")
                            .font(.system(size: 150))
                    } else if selectedCity.temprature > 17 {
                        Text("🌤️")
                            .font(.system(size: 150))
                    } else if selectedCity.temprature > 10 {
                        Text("🌧️")
                            .font(.system(size: 150))
                    } else if selectedCity.temprature > 5 {
                        Text("⛈️")
                            .font(.system(size: 150))
                    } else if selectedCity.temprature > 0 {
                        Text("🌨️")
                            .font(.system(size: 150))
                    } else if selectedCity.temprature <= 0 {
                        Text("❄️")
                            .font(.system(size: 150))
                    }
                    
                        
                    
                }
                .padding([.horizontal])
                
                // MARK: - ScrollView 1
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        DarkCard(selectedCity: selectedCity, imageName: "cloud.heavyrain", title: "Chances of Rain")
                        DarkCard(selectedCity: selectedCity, imageName: "wind", title: "Lowest wind")
                        DarkCard(selectedCity: selectedCity, imageName: "wind", title: "Highest wind")
                    }
                }
                .padding([.horizontal, .bottom])
                
                Spacer()
                ZStack {
                    Colors.white
                        .ignoresSafeArea(.all, edges: .bottom)
                    VStack {
                        HStack {
                            Text("Hourly forecast")
                                .font(.body)
                                .foregroundColor(Colors.darkBlue)
                            Spacer()
                        }
                        .padding([.leading, .top])
                        
                        // MARK: - ScrollView 2
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(selectedCity.forecast) { forecast in
                                    ForecastCard(forecast: forecast)
                                }
                            }
                        }
                        .padding()
                        
                        // MARK: - Bottom Vertical ScrollView
                        ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                ForEach(1..<5) { _ in
                                    HStack {
                                        Text("static data")
                                            .font(.body)
                                            .foregroundColor(Colors.darkBlue)
                                        Spacer()
                                        Text("🌩️")
                                            .font(.title)
                                        Text("22")
                                            .font(.title3)
                                            .foregroundColor(Color.black)
                                        Text("ºC")
                                            .font(.body)
                                            .fontWeight(.thin)
                                            .foregroundColor(Color.black)
                                    }
                                    Divider()
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                }
                .cornerRadius(24, corners: [.topLeft, .topRight])
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
