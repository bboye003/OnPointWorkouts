//
//  AddToWorkoutViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 3/8/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class AddToWorkoutViewController: UIViewController {

    @IBOutlet var itemTextField: UITextField!
    
    @IBAction func add(_ sender: AnyObject) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        var items:[String]
        if let myItems = itemsObject as? [String] {
            items = myItems
            items.append(itemTextField.text!)
            print(items)
            
        } else {
            items = [itemTextField.text!]
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        itemTextField.text = ""
    
    }
    // toggle keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
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
