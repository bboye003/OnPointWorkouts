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
         
         carb = (carb * 4) //for every gram of carbs there are 4 calories
         fat = (fat * 9) //for every gram of fat there are 9 calories
         protein = (protein * 4) //for every gram of protein there are 4 calories
         
         let totalCalories = (carb) + (fat) + (protein)
         
         return calLabel.text = String(totalCalories)

        
        
    }
    //return keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

        
   
}
