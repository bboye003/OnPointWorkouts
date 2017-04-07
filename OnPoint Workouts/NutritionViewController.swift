//
//  NutritionViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 4/1/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class NutritionViewController: UIViewController {
/*    @IBOutlet var carbTextField: UITextField!
    @IBOutlet var fatTextField: UITextField!
    @IBOutlet var proteinTextField: UITextField!
    @IBOutlet var outputLabel: UILabel!
//Calculate calories from user input
    @IBAction func CalorieCalculator(_ sender: Any) {
        
        var carb = Int(0)
        var fat = Int(0)
        var protein = Int(0)
            
        carb = Int(self.carbTextField.text!)!
        fat = Int(self.fatTextField.text!)!
        protein = Int(self.proteinTextField.text!)!
        
        carb = (carb * 4)
        fat = (fat * 9)
        protein = (protein * 4)
        
        let totalCalories = (carb) + (fat) + (protein)
        
        return outputLabel.text = String(totalCalories)
    
    }
    
//Getting data for percent of calories

    
    @IBOutlet var caloriesTaken: UITextField!
    @IBOutlet var carbPercentText: UITextField!
    @IBOutlet var fatPercentText: UITextField!
    @IBOutlet var proteinPercentText: UITextField!
    
//Output of macro calculation
    
    @IBOutlet var carbOutput: UILabel!
    @IBOutlet var fatOutput: UILabel!
    @IBOutlet var proteinOutput: UILabel!
    
    
    
    @IBAction func MacroCalculate(_ sender: Any) {
        
        var calories : Double
        var percCarb, percFat, percProtein : Double
        
        var totalCarbs, totalFat, totalProtein : Double
        
        calories = Double(self.caloriesTaken.text!)!
        percCarb = Double(self.carbPercentText.text!)!
        percFat = Double(self.fatPercentText.text!)!
        percProtein = Double(self.proteinPercentText.text!)!
        
        //put into decimal form
        percCarb = (percCarb / 100)
        percFat = (percFat / 100)
        percProtein = (percProtein / 100)
        
        // convert to grams
        totalCarbs = ((calories * percCarb) / 4)
        totalFat = ((calories * percFat) / 9)
        totalProtein = ((calories * percProtein) / 4)
        
        
        carbOutput.text = String(totalCarbs)
        proteinOutput.text = String(totalProtein)
        fatOutput.text = String(totalFat)
    }
    
    
    
    
    
   */ 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
