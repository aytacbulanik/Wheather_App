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
    @IBOutlet weak var wheatherIconImage: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    
    let weatherManager = WeatherMenager()
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
        
    }
    //klavyeyi kapatacak
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        return true
    }
   
    // textfiled içerisinin boşaltacak
    func textFieldDidEndEditing(_ textField: UITextField) {
        searchTextField.text = ""
    }
    
    //textfield boş kontrolü yapacak
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something"
            return false
        }
    }
    
    
    // search butonu için kodlar buraya yazıldı
    @IBAction func serachButtonPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
    }
    
    

}
