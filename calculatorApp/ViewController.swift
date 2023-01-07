//
//  ViewController.swift
//  calculatorApp
//
//  Created by Ислам Пулатов on 12/17/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputnumberLabel: UILabel!
    
    @IBOutlet weak var resultNumber: UILabel!
    
    
    var elements:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clearAll()
    }
    
    func clearAll() {
        elements = ""
        inputnumberLabel.text = ""
        resultNumber.text = ""
        
    }
    
    
    @IBAction func clearAll(_ sender: Any) {
        clearAll()
    }
    
    
    @IBAction func deleteButton(_ sender: Any) {
        if(!elements.isEmpty) {
            elements.removeLast()
            inputnumberLabel.text = elements
        }
    }
    
    func addTwoElemnts(value: String) {
        elements += value
        inputnumberLabel.text = elements
    }
    
    
    @IBAction func precentButton(_ sender: Any) {
        addTwoElemnts(value: "%")
    }
    
    @IBAction func divideButton(_ sender: Any) {
        addTwoElemnts(value: "/")

    }
    
    @IBAction func multipleButton(_ sender: Any) {
        addTwoElemnts(value: "*")

    }
    
    @IBAction func minusButton(_ sender: Any) {
        addTwoElemnts(value: "-")

    }
    
    @IBAction func plusButton(_ sender: Any) {
        addTwoElemnts(value: "+")

    }
    
    @IBAction func equalButton(_ sender: Any) {
      //  addTwoElemnts(value: "=")
        let expression = NSExpression(format: elements)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultString = formatResult(result: result)
        resultNumber.text = resultString
    }
    
    
    func formatResult(result : Double) -> String {
        if(result.truncatingRemainder(dividingBy: 1) == 0) {
            
            return String(format: "%.0f", result)
            
        }else {
            
            return String(format: "%.2 f", result)
            
        }
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        addTwoElemnts(value: "0")

    }
    
    
    @IBAction func dotButton(_ sender: Any) {
        addTwoElemnts(value: ".")

    }
    
    @IBAction func oneButton(_ sender: Any) {
        addTwoElemnts(value: "1")

    }
    
    @IBAction func twoButton(_ sender: Any) {
        addTwoElemnts(value: "2")

    }
    
    @IBAction func threeButton(_ sender: Any) {
        addTwoElemnts(value: "3")

    }
    
    @IBAction func fourButton(_ sender: Any) {
        addTwoElemnts(value: "4")

    }
    
    @IBAction func fiveButton(_ sender: Any) {
        addTwoElemnts(value: "5")

    }
    
    @IBAction func sixButton(_ sender: Any) {
        addTwoElemnts(value: "6")

    }
    
    @IBAction func sevenButton(_ sender: Any) {
        addTwoElemnts(value: "7")

    }
    
    @IBAction func eightButton(_ sender: Any) {
        addTwoElemnts(value: "8")

    }
    
    @IBAction func nineButton(_ sender: Any) {
        addTwoElemnts(value: "9")

    }
    
}

