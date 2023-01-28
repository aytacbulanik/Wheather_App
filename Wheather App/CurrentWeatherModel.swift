//
//  CurrentWeatherModel.swift
//  Wheather App
//
//  Created by MacBookPro on 27.01.2023.
//

import Foundation
import UIKit

struct CurrentWeatherModel {
    let summary : String
    let icon : UIImage
    let tempeture : String
    let humidity : String
    let precipitationProboilitiy : String
    
    init(data : CurrentWeather) {
        self.summary = data.summary
        self.precipitationProboilitiy = "\(data.precipProbability * 100)"
        self.tempeture = "\(Int(data.tempeture))"
        self.humidity = "% \(Int(data.humidity * 100))"
        self.icon = data.iconImage
    }
    
}
