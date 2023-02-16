//
//  CalculatorModel.swift
//  BMICalculatorApp
//
//  Created by Andrey on 16.02.2023.
//

import UIKit

struct CalculatorModel {
    var bmi: BMI?
    var advice: String?
    
    mutating func calculateBMI(height: Double, weight: Double) {
        let bmiValue = (weight / pow(height, 2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Underweight. You should eat more.", color: #colorLiteral(red: 0.6965072751, green: 1, blue: 1, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Healthy weight. Keep it up!", color: #colorLiteral(red: 0.7421414256, green: 1, blue: 0.7347304821, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Overweight. You should eat less.", color: #colorLiteral(red: 1, green: 0.8139899969, blue: 0.7511866689, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.2f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        bmi?.advice ?? "error when getting advice"
    }
    
    func getColor() -> UIColor {
        bmi?.color ?? .clear
    }
    
    
}
