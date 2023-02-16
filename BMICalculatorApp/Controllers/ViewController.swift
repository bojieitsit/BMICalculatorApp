//
//  ViewController.swift
//  BMICalculatorApp
//
//  Created by Andrey on 16.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var height:Double = 1.0
    var weight:Double = 100
    var bmiString = ""
    var bmi = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
        height = Double(sender.value)
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value))Kg"
        weight = Double(sender.value)
    }
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let bmiValue = (weight / pow(height, 2))
        bmiString = String(format: "%.2f", bmiValue)
        bmi = Double(bmiString)!
    }
    
    //MARK: NAVIGATION
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        <#code#>
//    }
    
    
}

