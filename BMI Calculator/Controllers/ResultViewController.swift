//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by T.K Pius on 14/01/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmi: BMI?

    @IBOutlet weak var adviseLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = String(format: "%.1f", bmi!.value)
        adviseLabel.text = bmi!.advice
        adviseLabel.textColor = bmi!.color
    }
    
    @IBAction func recalculateOnPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
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
