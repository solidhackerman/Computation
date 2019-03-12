//
//  ViewController.swift
//  Calculator
//
//  Created by Vihaan Sharma on 11/03/19.
//  Copyright © 2019 Vihaan Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberOne: UITextField!
    @IBOutlet weak var numberTwo: UITextField!
    
    @IBOutlet weak var resultAns: UILabel!
    @IBAction func buttonOp(_ sender: UIButton) {
        if let a = Double(numberOne.text!){
            if let b = Double(numberTwo.text!){
                var result = 0.00
                switch sender.titleLabel!.text{
                case "➕":
                    result = a+b
                case "➖":
                    result = a-b
                case "✖️":
                    result = a*b
                case "➗":
                    result = a/b
                default:
                    break
                }
                resultAns.text = String(result)
                numberOne.text = resultAns.text
                numberTwo.text = ""
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

