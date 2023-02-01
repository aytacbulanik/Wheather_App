//
//  HomeScreen.swift
//  Wheather App
//
//  Created by MacBookPro on 30.01.2023.
//

import UIKit

class HomeScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getUrlData()
    }
    
    func getUrlData() {
        let url = URL(string: "https://api.apilayer.com/fixer/symbols?apikey=VAfbnBSmAnnGK0KUkt8h1zDLRQ6LqOoi")
        let session = URLSession.shared
        let task = session.dataTask(with: url!) { data, response, error in
            print(data)
            print(response)
            print(error)
        }
        task.resume()
    }
   

}
