//
//  SettingsViewController.swift
//  TipHelper
//
//  Created by Ryan M on 3/22/19.
//  Copyright © 2019 Ryan M. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultPercentField: UITextField!
    
    @IBOutlet weak var percent1Field: UITextField!
    
    @IBOutlet weak var percent2Field: UITextField!
    
    @IBOutlet weak var percent3Field: UITextField!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func setDefaultPercent(_ sender: Any) {
        let newPercent = Double(defaultPercentField.text!) ?? defaults.double(forKey: "defPercent")
        defaults.set(newPercent, forKey: "defPercent")
        defaults.synchronize()
    }
    
    @IBAction func setPercent1(_ sender: Any) {
        let newPercent = Double(percent1Field.text!) ?? defaults.double(forKey: "percent1")
        defaults.set(newPercent, forKey: "percent1")
        defaults.synchronize()
    }

    @IBAction func setPercent2(_ sender: Any) {
        let newPercent = Double(percent2Field.text!) ?? defaults.double(forKey: "percent2")
        defaults.set(newPercent, forKey: "percent2")
        defaults.synchronize()
    }

    @IBAction func setPercent3(_ sender: Any) {
        let newPercent = Double(percent3Field.text!) ?? defaults.double(forKey: "percent3")
        defaults.set(newPercent, forKey: "percent3")
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
