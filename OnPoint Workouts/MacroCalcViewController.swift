//
//  MacroCalcViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 4/7/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class MacroCalcViewController: UIViewController {

    
    //get percentages
    @IBOutlet var caloriesTaken: UITextField!
    @IBOutlet var carbPercentText: UITextField!
    @IBOutlet var fatPercentText: UITextField!
    @IBOutlet var proteinPercentText: UITextField!
    
    //outputing to labels
    @IBOutlet var carbOutput: UILabel!
    @IBOutlet var fatOutput: UILabel!
    @IBOutlet var proteinOutput: UILabel!
    
    
    @IBAction func macroCalculate(_ sender: Any) {
        var calories : Double
        var percCarb, percFat, percProtein : Double
        
        var totalCarbs, totalFat, totalProtein : Double
        
        calories = Double(self.caloriesTaken.text!)!
        percCarb = Double(self.carbPercentText.text!)!
        percFat = Double(self.fatPercentText.text!)!
        percProtein = Double(self.proteinPercentText.text!)!
        
        if (percCarb + percFat + percProtein == 100.00) {
            displayMyAlertMessage(userMessage:"Does not equal 100%")
        }
        
        //put into decimal form
        percCarb = (percCarb / 100)
        percFat = (percFat / 100)
        percProtein = (percProtein / 100)
        
        //convert to grams
        totalCarbs = round((100 * (calories * percCarb)) / 400)
        totalFat = round(100 * (calories * percFat) / 900)
        totalProtein = round(100 * (calories * percProtein) / 400)
        
        //display whole gram amount
        carbOutput.text = String(Int(totalCarbs))
        proteinOutput.text = String(Int(totalProtein))
        fatOutput.text = String(Int(totalFat))

    }
    
    func displayMyAlertMessage(userMessage:String) {
        
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true, completion:nil)
        
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
