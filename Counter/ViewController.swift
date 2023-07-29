//
//  ViewController.swift
//  Counter
//
//  Created by Арина Колганова on 28.07.2023.
//

import UIKit

class ViewController: UIViewController {
    private var dateFormatter = DateFormatter()
    
    @IBOutlet private weak var logTextView: UITextView!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var nullButton: UIButton!
    @IBOutlet private weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "dd:MM:yyyy HH:mm:ss"
        plusButton.tintColor = .red
        nullButton.tintColor = .lightGray
        logTextView.isEditable = false
    }
    
    @IBAction private func refreshButtonTapped(_ sender: Any) {
        countLabel.text = "0"
        logTextView.text.append("\(dateFormatter.string(from: Date())): значение сброшено\n")
    }
    
    @IBAction private func minusButtonTapped(_ sender: Any) {
        if (Int(countLabel.text!)! > 0) {
            countLabel.text = String(Int(countLabel.text!)! - 1)
            logTextView.text.append("\(dateFormatter.string(from: Date())): значение изменено на -1\n")
        } else {
            logTextView.text.append("\(dateFormatter.string(from: Date())): попытка уменьшить значение счётчика ниже 0\n")
        }
    }
    
    @IBAction private func plusButtonTapped(_ sender: Any) {
        countLabel.text = String(Int(countLabel.text!)! + 1)
        logTextView.text.append("\(dateFormatter.string(from: Date())): значение изменено на +1\n")
    }
}

