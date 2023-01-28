//
//  CurrentWeather.swift
//  Wheather App
//
//  Created by MacBookPro on 27.01.2023.
//

import Foundation
import UIKit

struct CurrentWeather {
    let tempeture : Double
    let precipProbability : Double
    let summary : String
    let humidity : Double
    let icon : String
    let iconImage : UIImage
    
    init(tempeture: Double, precipProbability: Double, summary: String, humidity: Double, icon: String, iconImage: UIImage) {
        self.tempeture = tempeture
        self.precipProbability = precipProbability
        self.summary = summary
        self.humidity = humidity
        self.icon = icon
        self.iconImage = iconImage
    }
}
