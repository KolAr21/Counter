//
//  ViewController.swift
//  Counter
//
//  Created by Арина Колганова on 28.07.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        plusButton.tintColor = .red
        // Do any additional setup after loading the view.
    }
    
    @IBAction func countDel(_ sender: Any) {
        if (Int(countLabel.text!)! > 0) {
            countLabel.text = String(Int(countLabel.text!)! - 1)
        }
    }
    @IBAction func countAdd(_ sender: Any) {
        countLabel.text = String(Int(countLabel.text!)! + 1)
    }
}

