//
//  HomeScreen.swift
//  Wheather App
//
//  Created by MacBookPro on 30.01.2023.
//

import UIKit

class HomeScreen: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    let weatherManager = WeatherMenager()
    override func viewDidLoad() {
        super.viewDidLoad()

        searchTextField.delegate = self
        let tap = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        view.addGestureRecognizer(tap)
    }
    //klavyeyi kapatacak
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
    // textfiled içerisinin boşaltacak
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let city = textField.text {
            let url = weatherManager.fetchWeather(cityName: city)
            //weatherManager.performRequest(urlString: url)
        }
        textField.text = ""
    }
    //textfield boş kontrolü yapacak
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text == "" {
            textField.placeholder = "Type a someThing"
            return true
        } else {
            
            return true
        }
    }
    @IBAction func serachButtonPressed(_ sender: UIButton) {
        
    }
    // ekranda herhangi bir yere dokununca klavye kapatılacak
    @objc func closeKeyboard() {
        view.endEditing(true)
    }

}
