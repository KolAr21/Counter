//
//  ViewController.swift
//  Counter
//
//  Created by Арина Колганова on 28.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clickButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clickButton.tintColor = .black
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped() {
        countLabel.text = String(Int(countLabel.text!)! + 1)
    }
    
}

