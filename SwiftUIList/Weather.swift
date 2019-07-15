//
//  Weather.swift
//  SwiftUIList
//
//  Created by khuat.van.dung on 7/15/19.
//  Copyright © 2019 khuat.van.dung. All rights reserved.
//

import SwiftUI

struct Weather: Identifiable {
    var id = UUID()
    var image: String
    var temp: Int
    var city: String
}
