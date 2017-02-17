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
    
    
    
    @IBAction func calculateCalories(_ sender: UIButton) {
        let entCarbs = Int(self.carbs.text!)
        let entProtein = Int(self.protein.text!)
        let entFats = Int(self.fats.text!)
        
        //for every gram of protein and carb is 4 calories
        let carbCal = entCarbs! * 4
        let proCal = entProtein! * 4
        //for ebery gram of fat is 9 calories
        let fatCal = entFats! * 9
        
        let totalCal = carbCal + proCal + fatCal
        
        //caloriesOutput.text = String(totalCal)
    }
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
