//
//  NutritionViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 2/1/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class NutritionViewController: UIViewController {

    @IBOutlet var carbTextField: UITextField!
    @IBOutlet var fatTextField: UITextField!
    @IBOutlet var proteinTextField: UITextField!
    @IBOutlet var outputLabel: UILabel!
      
    @IBAction func calorieCalculator(_ sender: Any) {
        
        var carb = Int(self.carbTextField.text!)
        var fat = Int(self.fatTextField.text!)
        var protein = Int(self.proteinTextField.text!)
        
        carb = (carb! * 4)
        fat = (fat! * 4)
        protein = (protein! * 4)
        
        //var totalCalories = (carb!) + (fat!) + (protein!)
        
        //return outputLabel.text = String(totalCalories)
        
        
    }
}
