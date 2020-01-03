//
//  ViewController.swift
//  Calculator
//
//  Created by Zaeni Hoque on 12/9/19.
//  Copyright © 2019 Zaeni Hoque. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performingMath = false
    var operation = 0
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            // setting the current value in label to previousNumber variable
            previousNumber = Double(label.text!)!

            // checking the tag to see which operator to show on label
            if sender.tag == 12 { //Divide
                label.text = "/";
            }

            if sender.tag == 13 { //Multiply
                label.text = "x";
            }

            if sender.tag == 14 { //Subtract
                label.text = "-";
            }

            if sender.tag == 15 { //Add
                label.text = "+";
            }

            operation = sender.tag
            performingMath = true;

        }

        // tag = 16 means "Equal" button, thus performing calculations
        else if sender.tag == 16
        {

            if operation == 12{ //Divide
                label.text = String(previousNumber / numberOnScreen)
            }

            else if operation == 13{ //Multiply
                label.text = String(previousNumber * numberOnScreen)
            }

            else if operation == 14{ //Subtract
                label.text = String(previousNumber - numberOnScreen)
            }

            else if operation == 15{ //Add
                label.text = String(previousNumber + numberOnScreen)
            }
        }

        // if tag = 11 means "Clear" thus, clear all labels and operator variables
        else if sender.tag == 11{
            label.text = ""
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
        }
    }
    
    @IBAction func numbers(_ sender: UIButton) {
        //to check for any number present on the label
        if performingMath == true {
        label.text = String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
        performingMath = false
        }
        else {
        label.text = label.text! + String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

