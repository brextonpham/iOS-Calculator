//
//  ViewController.swift
//  Calculator
//
//  Created by Brexton Pham on 9/21/15.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle
        print("touchDigit was sent")
    }

}

