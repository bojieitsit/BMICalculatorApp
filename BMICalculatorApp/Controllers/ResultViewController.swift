//
//  ResultViewController.swift
//  BMICalculatorApp
//
//  Created by Andrey on 16.02.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String = "bmiValue"
    var advice: String = "example advice"
    var bgcolor: UIColor = .clear
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValueLabel.text = String(bmiValue)
        adviceLabel.text = advice
        view.backgroundColor = bgcolor
    }
    
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
