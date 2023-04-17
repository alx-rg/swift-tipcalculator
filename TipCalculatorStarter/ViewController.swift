//
//  ViewController.swift
//  TipCalculatorStarter
//
//  Created by Chase Wang on 9/19/17.
//  Copyright © 2017 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // HEADER
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var themeSwitch: UISwitch!
    
    // Input Card View
    @IBOutlet weak var inputCardView: UIView!
    @IBOutlet weak var billAmountTextField: BillAmountTextField!
    @IBOutlet weak var tipPercentSegmentedControl: UISegmentedControl!
    
    //Output Card View
    @IBOutlet weak var outputCardView: UIView!
    @IBOutlet weak var tipAmountTitleLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountTitleLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    
    @IBOutlet weak var resetButton: UIButton!
    
    // MARK : IBActions
    @IBAction func themeToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("switch toggled on")
        } else {
            print("switch off")
        }
    }
    
    @IBAction func tipPercentChanged(_ sender: UISegmentedControl) {
    }
    

    @IBAction func resetButtonTapped(_ sender: UIButton) {
        print("reset button tapped")
    }
    
    
    // MARK: - View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1
        billAmountTextField.calculateButtonAction = {
            guard let billAmountText = self.billAmountTextField.text,
                let billAmount = Double(billAmountText) else {
                return
            }

            let roundedBillAmount = (100 * billAmount).rounded() / 100

            print("Bill Amount: \(roundedBillAmount)")
        }
    }
}

