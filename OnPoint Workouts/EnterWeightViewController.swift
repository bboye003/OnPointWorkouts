//
//  EnterWeightViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 4/18/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit
import CoreData

class EnterWeightViewController: UIViewController {

    
    @IBOutlet var weightTextField: UITextField!
    @IBOutlet var metric: UISwitch!
    
    //save weight entry
    @IBAction func buttonSaved(_ sender: Any) {
        
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let newWeight = UserWeight(context: context)
        
        newWeight.weight = weightTextField.text! //Check to make sure this is filled (Alert message)
        
        //metric used
        if (metric.isOn){
            newWeight.units = "lbs"
        } else {
            newWeight.units = "kgs"
        }
        
        //formatting date
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "MM.dd.yyyy"
        let realDate = formatter.string(from: date)
        
        newWeight.date = realDate
        
        
        //Save the data
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
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
