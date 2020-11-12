//
//  ViewController.swift
//  simple calculator
//
//  Created by NDHU_CSIE on 2020/11/12.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func add(_ sender: Any) {
        let firstNum = Double(num1.text!)
        let secondNum = Double(num2.text!)
        
        if firstNum != nil && secondNum != nil{
        let outputValue = Double(firstNum! + secondNum!)
        result.text = "Result = \(outputValue)"
        }else{
            result.text = "Not valid numbers. Please try again"
        }
    }
    @IBAction func minus(_ sender: Any) {
        let firstNum = Double(num1.text!)
        let secondNum = Double(num2.text!)
        
        
        if firstNum != nil && secondNum != nil{
        let outputValue = Double(firstNum! - secondNum!)
        result.text = "Result = \(outputValue)"
        }else{
            result.text = "Value missing. Please try again"
        }
    }
    @IBAction func times(_ sender: Any) {
        let firstNum = Double(num1.text!)
        let secondNum = Double(num2.text!)
        if firstNum != nil && secondNum != nil{
        let outputValue = Double(firstNum! * secondNum!)
        result.text = "Result = \(outputValue)"
        }else{
            result.text = "Value missing. Please try again"
        }
    }
    @IBAction func divide(_ sender: Any) {
        let firstNum = Double(num1.text!)
        let secondNum = Double(num2.text!)
        
        if firstNum != nil && secondNum != nil{
        let outputValue = Double(firstNum! / secondNum!)
            if outputValue.isInfinite{
                result.text = "Number is infinite, try again."
            }else{
        result.text = "Result = \(outputValue)"
            }
        }else{
            result.text = "Value missing. Please try again"
        }
    }
}

