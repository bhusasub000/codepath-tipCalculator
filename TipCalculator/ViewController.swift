//
//  ViewController.swift
//  TipCalculator
//
//  Created by Subash Bhusal on 1/27/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipSeg: UISegmentedControl!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var billAmountLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.red
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountLabel.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.20]
        
        let tip = bill*tipPercentages[tipSeg.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
    
}

