//
//  ViewController.swift
//  CalculaterIOS
//
//  Created by admin on 23/10/2017.
//  Copyright © 2017 MuhammadAamir. All rights reserved.
//

import UIKit

class CalculateVC: UIViewController {

    
    @IBOutlet weak var calculateOutlet: UILabel!
    var operationValue: String!
    var calculateValue1: Double!
    var calculateValue2: Double!
    var textNumber: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addNumberInOutput(number:String){
        textNumber = String(calculateOutlet.text!)
        textNumber = textNumber + number
        calculateOutlet.text = textNumber
    }

    @IBAction func calculateAction(_ sender: UIButton) {
        
        addNumberInOutput(number: (sender.titleLabel?.text)!)
    }
    
    func operation(op:String){
        
        operationValue = op
        calculateValue1 = Double(textNumber)!
        textNumber = ""
    }
    
    @IBOutlet weak var calculateOperation: CalculateButton!
    
    
}

