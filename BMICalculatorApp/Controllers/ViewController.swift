//
//  ViewController.swift
//  BMICalculatorApp
//
//  Created by Andrey on 16.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var calculatorModel = CalculatorModel()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value))Kg"
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        calculatorModel.calculateBMI(height: Double(height), weight: Double(weight))
        performSegue(withIdentifier: "goToResult", sender: sender)
    }
    
    //MARK: NAVIGATION
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorModel.getBMIValue()
            destinationVC.bgcolor = calculatorModel.getColor()
            destinationVC.advice = calculatorModel.getAdvice()
        }
    }
    
    
}

