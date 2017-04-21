//
//  EnterWeightViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 4/12/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
// 

import UIKit
import CoreData

class EnterWeightViewController: UIViewController {

    
    @IBOutlet var weightTextField: UITextField!
    @IBOutlet var metric: UISwitch!
    
    /*create and save weight entry*/
    @IBAction func buttonSaved(_ sender: Any) {
        
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let newWeight = UserWeight(context: context)
        
        newWeight.weight = weightTextField.text! //Check to make sure this is filled (Alert message)
        
        //save metric
        if (metric.isOn){
            newWeight.units = "lbs"
        } else {
            newWeight.units = "kgs"
        }
        
        //formatting date
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        let realDate = formatter.string(from: date)
        newWeight.date = realDate
        
        
        //Save all content
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        weightTextField.text = ""
        
    }
    
    //Hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
}
