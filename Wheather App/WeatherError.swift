//
//  WeatherError.swift
//  Wheather App
//
//  Created by MacBookPro on 28.01.2023.
//

import Foundation

enum WeatherError {
    case requestError
    case responseUnSucceffull(statusCode : Int)
    case invalidData
    case jsonParsingError
}
