//
//  WeatherManager.swift
//  Wheather App
//
//  Created by MacBookPro on 4.02.2023.
//

import Foundation

struct WeatherMenager {
    let weatherUrl = "https://api.openweathermap.org/data/2.5/weather?appid=9d2a973a1715ffce61654217d6d9b96c&units=metric"
    
    func fetchWeather(cityName : String) {
        let urlString = "\(weatherUrl)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString : String ) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error?.localizedDescription)
                    return
                }
                if let safeData = data {
                    self.parseJson(data: safeData)
                }
            }
            task.resume()
        }
    }
    func parseJson(data : Data) {
        let decoder = JSONDecoder()
        do {
            let veri = try decoder.decode(WeatherData.self, from: data)
            print(veri.weather[0].description)
        } catch {
            print(error.localizedDescription)
        }
    }
}
