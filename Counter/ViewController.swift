//
//  ViewController.swift
//  Counter
//
//  Created by Арина Колганова on 28.07.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var logTextView: UITextView!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var nullButton: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    private var dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "dd:MM:yyyy HH:mm:ss"
        plusButton.tintColor = .red
        nullButton.tintColor = .lightGray
        logTextView.isEditable = false
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func countNull(_ sender: Any) {
        countLabel.text = "0"
        logTextView.text.append("\(dateFormatter.string(from: Date())): значение сброшено\n")
    }
    
    @IBAction func countDel(_ sender: Any) {
        if (Int(countLabel.text!)! > 0) {
            countLabel.text = String(Int(countLabel.text!)! - 1)
            logTextView.text.append("\(dateFormatter.string(from: Date())): значение изменено на -1\n")
        } else {
            logTextView.text.append("\(dateFormatter.string(from: Date())): попытка уменьшить значение счётчика ниже 0\n")
        }
    }
    @IBAction func countAdd(_ sender: Any) {
        countLabel.text = String(Int(countLabel.text!)! + 1)
        logTextView.text.append("\(dateFormatter.string(from: Date())): значение изменено на +1\n")
    }
}

