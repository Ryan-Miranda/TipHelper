//
//  ViewController.swift
//  TipHelper
//
//  Created by Ryan M on 3/22/19.
//  Copyright © 2019 Ryan M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //update labels w/ user selected currency
        tipLabel.text = (defaults.string(forKey: "currency") ?? "$") + "0.00"
        totalLabel.text = (defaults.string(forKey: "currency") ?? "$") + "0.00"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        tipControl.removeAllSegments()
       
        let percents = [defaults.integer(forKey: "percent1"), defaults.integer(forKey: "percent2"), defaults.integer(forKey: "percent3")]
        
        //update segemented control w/ user default percentages
        for i in 0...(percents.count - 1){
            tipControl.insertSegment(withTitle: "\(percents[i])%", at: i, animated: true)
        }
        
        //select the segment user set as default
        for i in 0...(percents.count - 1){
            if percents[i] == defaults.integer(forKey: "defPercent"){
                tipControl.setEnabled(true, forSegmentAt: i)
            }
        }
        
        //update labels w/ user selected currency
        tipLabel.text = (defaults.string(forKey: "currency") ?? "$") + "0.00"
        totalLabel.text = (defaults.string(forKey: "currency") ?? "$") + "0.00"
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //access bill amount
        let bill = Double(billField.text!) ?? 0
        
        //calculate tip & total using user default percentages
        let tipPercentages = [defaults.double(forKey: "percent1")/100.0, defaults.double(forKey: "percent2")/100.0, defaults.double(forKey: "percent3")/100.0]
        
        //use default leftmost percentage as default
        var tip = 0.0
        if (tipControl.selectedSegmentIndex != -1){
             tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        }
        else{
            tip = bill * tipPercentages[0]
        }
        
        let total = bill + tip
        
        //update tip & total labels using user selected currency
        let curr = defaults.string(forKey: "currency") ?? "$"
        tipLabel.text = curr + String(format: "%.2f", tip)
        totalLabel.text = curr + String(format: "%.2f", total)
    }
}

