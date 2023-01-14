//
//  BmiCalclutor.swift
//  BMI Calculator
//
//  Created by T.K Pius on 14/01/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct BmiCalculator {
    var bmi: BMI?
    
    func getBmiValue() -> String {
        return String(format: "%.1f", self.bmi?.value ?? 0.0)
    }
    
    func getBmiAdvise() -> String {
        return self.bmi?.advice ?? "No advice"
    }
    
    func getBmiColor() -> UIColor {
        return self.bmi?.color ?? UIColor.white
    }
    
    func getBmi() -> BMI {
        return self.bmi ?? BMI(value: 0.0, advice: "No advice", color: UIColor.white)
    }
    
    mutating func calculateBmi(heightValue: Float, weightValue: Float) -> Void {
        let bmi = weightValue/pow(heightValue, 2)
        
        if bmi < 18.5{
            self.bmi = BMI(value: bmi, advice: "Eat more pies", color: UIColor.blue)
            return
        }
        
        if bmi < 24.9{
            self.bmi = BMI(value: bmi, advice: "Fit as a fiddle", color: UIColor.green)
            return
        }
        
        self.bmi = BMI(value: bmi, advice: "Eat less pies", color: UIColor.red)
        
    }
}
