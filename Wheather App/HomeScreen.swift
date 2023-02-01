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
        let anotherUrl = URL(string: "http://data.fixer.io/api/latest?access_key=44406cc034b7e6610b5c5647cc9fe2d4")
        // let url = URL(string: "https://api.apilayer.com/fixer/symbols?apikey=VAfbnBSmAnnGK0KUkt8h1zDLRQ6LqOoi")
        let session = URLSession.shared
        let task = session.dataTask(with: anotherUrl!) { data, response, error in
            if let data = data {
                do {
                    let jsonResponse  = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String,Any>
                    DispatchQueue.main.async {
                        // ilk olarak ana json objesini parse ediyoruz.
                        if let rates = jsonResponse["rates"] as? [String : Any] {
                            // burada ise alt katmandaki veriye ulaşıp onu parse ediyoruz.
                            if let cad = rates["CAD"] as? Double {
                                print(cad)
                            }
                        }
                    }
                }catch {
                    print(error.localizedDescription)
                }
                
            }
        }
        task.resume()
    }
   

}
