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
        
         var carb, fat, protein : Double
         
         carb = Double(self.carbsTextField.text!)!
         fat = Double(self.fatsTextField.text!)!
         protein = Double(self.proteinsTextField.text!)!
        
        if ((carb.isZero) || (fat.isZero) || (protein.isZero)) {
            displayMyAlertMessage(userMessage: "All fields are required!")
            return
            }
        
         carb = (carb * 4) //for every gram of carbs there are 4 calories
         fat = (fat * 9) //for every gram of fat there are 9 calories
         protein = (protein * 4) //for every gram of protein there are 4 calories
         
         let totalCalories = (carb) + (fat) + (protein)
         
         return calLabel.text = String(totalCalories)

        
        
    }
    func displayMyAlertMessage(userMessage:String) {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true, completion:nil)
        
    }
        

    //return keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

        
   
}
