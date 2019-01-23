//
//  ViewController.swift
//  Tippr
//
//  Created by Kunal Tambekar on 1/17/19.
//  Copyright © 2019 Kunal Tambekar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onBackgroundTap(_ sender: Any) {
        print("Should dismiss keyboard");
        view.endEditing(true);
    }
    
    @IBAction func onAmountChanged(_ sender: Any) {
        let tipPercentages = [0.15,0.18,0.22];
        let bill = Double(billField.text!) ?? 0;
        let tip = bill*tipPercentages[tipPercent.selectedSegmentIndex];
        let total = bill + tip;
        
        tipLabel.text = String(format:"$%.2f",tip);
        totalLabel.text = String(format:"$%.2f",total);
    }
}

