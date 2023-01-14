//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var bmiCalculator = BmiCalculator()

    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(format: "%.0f", sender.value))Kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        bmiCalculator.calculateBmi(heightValue: heightSlider.value, weightValue: weightSlider.value)
    
        
        self.performSegue(withIdentifier: "gotoResult", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResult"{
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.bmi = bmiCalculator.getBmi()
        }
    }
    
}

