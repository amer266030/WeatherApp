//
//  test.swift
//  Weather_app
//
//  Created by Amer Alyusuf on 20/01/2023.
//

import SwiftUI

struct test: View {
    var body: some View {
        TabView {
            VStack(spacing: 10) {
                Text("Hello")
                Image(systemName: "circle.fill")
                Text("Goodbye")
            }
                .edgesIgnoringSafeArea(.top)
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Home")
                }
            
            test2()
                .edgesIgnoringSafeArea(.top)
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Test2 Page")
                }
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
