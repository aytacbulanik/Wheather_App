//
//  JsonDownloader.swift
//  Wheather App
//
//  Created by MacBookPro on 28.01.2023.
//

import Foundation

class JsonDownloader {
    let session : URLSession
    
    init(config : URLSessionConfiguration) {
        self.session = URLSession(configuration: config)
    }
    
    convenience init() {
        self.init(config: .default)
    }
    
    typealias JSON = [String : AnyObject]
    func jsonTask(with request : URLRequest , completionHandler completion : @escaping (JSON? ,WeatherError?) -> Void) -> URLSessionDataTask {
        
        let task = session.dataTask(with: request) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil, WeatherError.requestError)
                return
            }
            
            
        }
        return task
    }
}
