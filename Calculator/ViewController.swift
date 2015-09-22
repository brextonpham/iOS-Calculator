//
//  ViewController.swift
//  Calculator
//
//  Created by Brexton Pham on 9/21/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber: Bool = false

    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTypingANumber {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTypingANumber = true
    }
    
    //pi is alt p
    
    @IBAction func performOperation(sender: UIButton) {
        userIsInTheMiddleOfTypingANumber = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                display.text = String(M_PI)
            } else if mathematicalSymbol == " " {
                let operand = Double(display.text!)
                display.text = String(sqrt(operand))
            }
        }
    }
}

