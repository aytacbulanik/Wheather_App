//
//  ViewController.swift
//  Wheather App
//
//  Created by MacBookPro on 27.01.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var konumLabel: UILabel!
    
    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var tempetureLabel: UILabel!
    @IBOutlet weak var humindtyLabel: UILabel!
    @IBOutlet weak var rainLabel: UILabel!
    @IBOutlet weak var refreshButtonOut: UIButton!
    @IBOutlet weak var summaryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let baseURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?appid=9d2a973a1715ffce61654217d6d9b96c")
        let istekURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=32.2331&lon=-19.2211&appid=39d3bb501d19a7b5f5d9449a0d69b76c")
        let requestURL = URL(fileURLWithPath: "lat=32.0321&lon=-25.3211", relativeTo: baseURL)
        
        let request = URLRequest(url: istekURL!)
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let task = session.dataTask(with: request) { data, response, error in
            print(data)
            let jsonData = try! JSONSerialization.jsonObject(with: data!)
            print(jsonData)
        }
        task.resume()
        
    }

    @IBAction func resreshButtonPressed(_ sender: UIButton) {
        
    }
    
}

