//
//  ViewController.swift
//  Tip Calculator
//
//  Created by user212297 on 1/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipPercent: UISegmentedControl!
    
 
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0//get total tip by multiplying tip*tip percentage
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill*tipPercentages[tipPercent.selectedSegmentIndex]
        let total = bill+tip
        
        tipAmountLabel.text = String(format:"$%.2f", tip)
        totalAmountLabel.text=String(format:"$%.2f",total)
    }
    
}

