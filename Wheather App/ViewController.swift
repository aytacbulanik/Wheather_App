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
    }

    @IBAction func resreshButtonPressed(_ sender: UIButton) {
        
    }
    
}

