//
//  EnterWeightViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 4/18/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class EnterWeightViewController: UIViewController {

    
    @IBOutlet var weightTextField: UITextField!
    
    @IBOutlet var units: UISwitch!
    
    //save weight entry
    @IBAction func buttonSaved(_ sender: Any) {
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
