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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //update segemented control w/ user default percentages
        tipControl.removeAllSegments()
       
        let percents = [defaults.integer(forKey: "percent1"), defaults.integer(forKey: "percent2"), defaults.integer(forKey: "percent3")]
        
        for i in 0...(percents.count - 1){
            tipControl.insertSegment(withTitle: "\(percents[i])%", at: i, animated: true)
        }
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
        
        //update tip & total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

