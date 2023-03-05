//
//  HomeScreen.swift
//  Wheather App
//
//  Created by MacBookPro on 30.01.2023.
//

import UIKit

class HomeScreen: UIViewController {

    
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    let weatherManager = WeatherMenager()
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    //klavyeyi kapatacak
   
    // textfiled içerisinin boşaltacak
   
    //textfield boş kontrolü yapacak
    
    @IBAction func serachButtonPressed(_ sender: UIButton) {
        
    }
    // ekranda herhangi bir yere dokununca klavye kapatılacak
    

}
