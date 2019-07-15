//
//  WeatherCell.swift
//  SwiftUIList
//
//  Created by khuat.van.dung on 7/8/19.
//  Copyright © 2019 khuat.van.dung. All rights reserved.
//

import SwiftUI

struct WeatherCell : View {
    var weather: Weather
    
    var body: some View {
        HStack { Image(weather.image).resizable().frame(width: 50, height: 50, alignment: .leading).clipShape(Circle())
            .overlay(Circle().stroke(Color.green, lineWidth: 2)).shadow(radius: 1)
            VStack(alignment: .leading) {
                Text(weather.city).font(.subheadline)
                Text("\(weather.temp) ºC").font(.subheadline)
                
            }
        }
    }
}

#if DEBUG
struct WeatherCell_Previews : PreviewProvider {
    static var previews: some View {
        WeatherCell(weather: Weather(image: "Intro1", temp: 29, city: "HN"))
    }
}
#endif
