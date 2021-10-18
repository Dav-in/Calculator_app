//
//  ViewController.swift
//  iOS_Calculator
//
//  Created by Davin Henrik on 10/18/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var AllClear: UIButton!
    @IBOutlet weak var Add: UIButton!
    @IBOutlet weak var Sub: UIButton!
    @IBOutlet weak var Div: UIButton!
    @IBOutlet weak var Multi: UIButton!
    @IBOutlet weak var Decimal: UIButton!
    @IBOutlet weak var Equals: UIButton!
    @IBOutlet weak var inputDisplay: UITextField!
    @IBOutlet weak var resultDisplay: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
 
    var clear = true
        
        func AddNumberToLabel(number: String) {
            var textNumber = String(resultDisplay.text!)
            if clear {
                textNumber = ""
                clear = false
            }
            textNumber = textNumber + number
            resultDisplay.text = textNumber
        }
    
    @IBAction func oneButton (_ sender: Any) {
            AddNumberToLabel(number: "1")
        }
        
        @IBAction func twoButton(_ sender: Any) {
            AddNumberToLabel(number: "2")
        }
        
        @IBAction func threeButton(_ sender: Any) {
            AddNumberToLabel(number: "3")
        }
        
        @IBAction func fourButton(_ sender: Any) {
            AddNumberToLabel(number: "4")
        }
        
        @IBAction func fiveButton(_ sender: Any) {
            AddNumberToLabel(number: "5")
        }
        
        @IBAction func sixButton(_ sender: Any) {
            AddNumberToLabel(number: "6")
        }
        
        @IBAction func sevenButton(_ sender: Any) {
            AddNumberToLabel(number: "7")
        }
        
        @IBAction func eightButton(_ sender: Any) {
            AddNumberToLabel(number: "8")
        }
        
        @IBAction func nineButton(_ sender: Any) {
            AddNumberToLabel(number: "9")
        }
        
        @IBAction func zeroButton(_ sender: Any) {
            AddNumberToLabel(number: "0")
        }
        
        @IBAction func deciButton(_ sender: Any) {
            AddNumberToLabel(number: ".")
        }
        
        
        var opButton = "+"
        var firstNum:Double?
        
        @IBAction func multiButton(_ sender: Any) {
            opButton = "*"
            firstNum = Double(resultDisplay.text!)
            clear = true
        }
        
        @IBAction func equalButton(_ sender: Any) {
            let secondNum = Double(resultDisplay.text!)
            var result:Double?
            switch opButton {
            case "*":
                result = firstNum! * secondNum!
            case "/":
                result = firstNum! / secondNum!
            case "-":
                result = firstNum! - secondNum!
            case "+":
                result = firstNum! + secondNum!
            default:
                result = 0.0
            }
            resultDisplay.text = String(result!)
            clear = true
        }
        
        @IBAction func subButton(_ sender: Any) {
            opButton = "-"
            firstNum = Double(resultDisplay.text!)
            clear = true
        }
        
        @IBAction func divisionButton(_ sender: Any) {
            opButton = "/"
            firstNum = Double(resultDisplay.text!)
            clear = true
        }
        
        @IBAction func plusButton(_ sender: Any) {
            opButton = "+"
            firstNum = Double(resultDisplay.text!)
            clear = true
        }
        
        
        @IBAction func acButton(_ sender: Any) {
            resultDisplay.text = "0"
            clear = true
        }
        
        
        
        @IBAction func buttonPercent(_ sender: Any) {
            var firstNum = Double(resultDisplay.text!)
            firstNum = firstNum!/100.0
            resultDisplay.text = String(firstNum!)
        }
    }

    
    
    

    
    
