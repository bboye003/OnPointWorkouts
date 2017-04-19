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
        //reference to appdelegate
        let appDel = (UIApplication.shared.delegate as! AppDelegate)
        let context = appDel.persistentContainer.viewContext
        let entity = NSEntityDescription.insertNewObject(forEntityName: "UserWeights", into: context)
        
        
        
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
