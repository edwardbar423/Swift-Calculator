//
//  ViewController.swift
//  Calculator
//
//  Created by Andrew Barber on 6/28/16.
//  Copyright © 2016 Andrew Barber. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button1(_ sender: UIButton) {
        numberButtonClicked(1)
    }
    @IBAction func button2(_ sender: UIButton) {
        numberButtonClicked(2)
    }
    @IBAction func button3(_ sender: UIButton) {
        numberButtonClicked(3)
    }
    @IBAction func button4(_ sender: UIButton) {
        numberButtonClicked(4)
    }
    @IBAction func button5(_ sender: UIButton) {
        numberButtonClicked(5)
    }
    @IBAction func button6(_ sender: UIButton) {
        numberButtonClicked(6)
    }
    @IBAction func button7(_ sender: UIButton) {
        numberButtonClicked(7)
    }
    @IBAction func button8(_ sender: UIButton) {
        numberButtonClicked(8)
    }
    @IBAction func button9(_ sender: UIButton) {
        numberButtonClicked(9)
    }
    @IBAction func button0(_ sender: UIButton) {
        numberButtonClicked(0)
    }
    @IBAction func buttonMulti(_ sender: UIButton) {
        operatorClicked("multi")
    }
    @IBAction func buttonDivide(_ sender: UIButton) {
        operatorClicked("divide")
    }
    @IBAction func buttonSubtract(_ sender: UIButton) {
        operatorClicked("subtract")
    }
    @IBAction func buttonAdd(_ sender: UIButton) {
        operatorClicked("plus")
    }
    @IBAction func buttonEquals(_ sender: UIButton) {
        numberTwo = displayLabel.text!
        if (oper == "plus") {
            let answer = Int(numberOne)! + Int(numberTwo)!
            displayLabel.text = String(answer)
        }
        else if (oper == "subtract") {
            let answer = Int(numberOne)! - Int(numberTwo)!
            displayLabel.text = String(answer)
        }
        else if (oper == "multi") {
            let answer = Int64(numberOne)! * Int64(numberTwo)!
            displayLabel.text = String(answer)
        }
        else if (oper == "divide") {
            let answer = Double(numberOne)! / Double(numberTwo)!
            displayLabel.text = String(answer)
        }
        numberOne = ""
        numberTwo = ""
        oper = ""
        lastPressNumber = false
    }
    //Function fires after number button clicked!
    func numberButtonClicked(_ number: Int) {
        if (lastPressNumber) {
            displayLabel.text = displayLabel.text! + String(number)
        }
        else {
            displayLabel.text = String(number)
        }
        lastPressNumber = true
    }
    
    //function to keep track of multiplier
    func operatorClicked (_ op: String) {
        oper = op
        lastPressNumber = false
        numberOne = displayLabel.text!
        
    }
    
    var lastPressNumber: Bool = true
    var oper: String = ""
    var numberOne: String = ""
    var numberTwo: String = ""
}

