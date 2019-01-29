//
//  ViewController.swift
//  TipCalc
//
//  Created by Srishtti Talwar on 1/9/19.
//  Copyright © 2019 Srishtti Talwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    

    @IBOutlet weak var TipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func CalcTip(_ sender: Any) {
        
        let TipPercentages = [0.18, 0.20, 0.22]
        
        let bill = Double(BillField.text!) ?? 0
        let tip = bill * TipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        TipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    }
}

