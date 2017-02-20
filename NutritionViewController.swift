//
//  NutritionViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 2/1/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class NutritionViewController: UIViewController {

    @IBOutlet weak var carbs: UITextField!
    @IBOutlet weak var protein: UITextField!
    @IBOutlet weak var fats: UITextField!
    @IBOutlet weak var caloriesOutput: UILabel!
    
    
    @IBAction func calCalories(_ sender: UIButton) {
        let entCarbs = Double(self.carbs.text!)
        let entProtein = Double(self.protein.text!)
        let entFats = Double(self.fats.text!)
        
        //for every gram of protein and carb is 4 calories
        let carbCal = Double(entCarbs! * 4.0)
        let proCal = Double(entProtein! * 4.0)
        
        //for every gram of fat is 9 calories
        let fatCal = Double(entFats! * 9.0)
        
        //Calculate
        var totalCal: Double
        var totalCal2: Double
        totalCal = (carbCal + proCal)
        totalCal2 = (totalCal + fatCal)
        
        return caloriesOutput.text = String(totalCal2)
    }
    
    
   
}
