//
//  CalorieCalcViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 4/7/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class CalorieCalcViewController: UIViewController {

    @IBOutlet var carbsTextField: UITextField!
    @IBOutlet var fatsTextField: UITextField!
    @IBOutlet var proteinsTextField: UITextField!
    @IBOutlet var calLabel: UILabel!
    
    
    @IBAction func caloriesTapped(_ sender: Any) {
        
         var carb, fat, protein : Int
         
         carb = Int(self.carbsTextField.text!)!
         fat = Int(self.fatsTextField.text!)!
         protein = Int(self.proteinsTextField.text!)!
         
         carb = (carb * 4)
         fat = (fat * 9)
         protein = (protein * 4)
         
         let totalCalories = (carb) + (fat) + (protein)
         
         return calLabel.text = String(totalCalories)

        
        
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}
