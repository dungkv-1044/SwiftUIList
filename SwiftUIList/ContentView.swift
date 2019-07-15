//
//  ContentView.swift
//  SwiftUIList
//
//  Created by khuat.van.dung on 7/8/19.
//  Copyright © 2019 khuat.van.dung. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    let data: [Weather] = [
        Weather(image: "Intro1", temp: 28, city: "HN - TP Ha Noi"),
        Weather(image: "Intro2",   temp: 29, city: "SG - TP  Sai Gon"),
        Weather(image: "Intro3", temp: 30, city: "DN - TP Da Nang"),
        Weather(image: "Intro4", temp: 31, city: "PQ - Phu Quoc"),
        Weather(image: "Intro5", temp: 32, city: "HP - TP Hai Phong")
    ]
    
    var body: some View {
        NavigationView {
            
            List(data) { weather in
                NavigationButton(destination: DetailView(title: weather.city)) {
                    WeatherCell(weather: weather)
                }
                }
                .navigationBarTitle(Text("Weather List"))
        }
    }
}

struct DetailView: View {
    var title: String
    var body: some View {
        VStack {
            Text(title).color(.red).font(.headline)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
