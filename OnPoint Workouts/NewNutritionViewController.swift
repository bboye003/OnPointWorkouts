//
//  NewNutritionViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 3/11/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class NewNutritionViewController: UIViewController {

    @IBOutlet var carbTextField: UITextField!
    @IBOutlet var fatTextField: UITextField!
    @IBOutlet var proteinTextField: UITextField!
    
    @IBOutlet var outputLabel: UILabel!
    
    @IBAction func calorieCalculator(_ sender: Any) {
        var carb, fat, protein : Int
        
        carb = Int(self.carbTextField.text!)!
        fat = Int(self.fatTextField.text!)!
        protein = Int(self.proteinTextField.text!)!
        
        carb = (carb * 4)
        fat = (fat * 9)
        protein = (protein * 4)
        
        let totalCalories = (carb) + (fat) + (protein)
        
        return outputLabel.text = String(totalCalories)
        

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
