//
//  ViewController.swift
//  Calculator
//
//  Created by Aeronaut on 31.01.2017.
//  Copyright © 2017 Aeronaut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet private weak var display: UILabel!
    
    private var userIsInTheMiddleOfWriting = false
    
    @IBAction private func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfWriting == true {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfWriting = true
    }
    
   private var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    @IBAction private func performOperation(_ sender: UIButton) {
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                displayValue = M_PI
            } else if mathematicalSymbol == "√" {
                displayValue = sqrt(displayValue)
            }
        }
    }
}

