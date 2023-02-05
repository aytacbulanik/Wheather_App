//
//  WeatherData.swift
//  Wheather App
//
//  Created by MacBookPro on 5.02.2023.
//

import Foundation

struct WeatherData : Decodable {
    let name : String
    let main : Main
    let weather : [Weather]
}

struct Main : Decodable {
    let temp : Double
}

struct Weather : Decodable {
    let description : String
}

