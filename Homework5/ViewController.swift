//
//  ViewController.swift
//  Homework5
//
//  Created by Burak Turhan on 22.01.2023.
//

import UIKit

class ViewController: UIViewController {



    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var result: Double = 0

    @IBOutlet weak var displayLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

 

    @IBAction func numberButtonPressed(_ sender: AnyObject) {
        if let number = sender.tag {
            if displayLabel.text == "0" {
                displayLabel.text = String(number)
            } else {
                displayLabel.text = (displayLabel.text ?? "0") + (String(number))
            }
        }
    }

    @IBAction func clearButtonPressed(_ sender: UIButton) {
        firstNumber = 0
        secondNumber = 0
        result = 0
        displayLabel.text = "0"
    }

    @IBAction func plusButtonPressed(_ sender: UIButton) {
        if let number = displayLabel.text {
            firstNumber = Double(number)!
            displayLabel.text = ""
        }
    }

    @IBAction func equalButtonPressed(_ sender: UIButton) {
        if let number = displayLabel.text {
            secondNumber = Double(number)!
            result = firstNumber + secondNumber
            displayLabel.text = String(result)

        }
    }
}
