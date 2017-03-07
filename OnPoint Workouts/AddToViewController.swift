//
//  AddToViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 3/7/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class AddToViewController: UIViewController {

    
    @IBOutlet var itemTextField: UITextField!
    
    @IBAction func add(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items:[String]
        
        if let tempItems = itemsObject as? [String] {
            
            items = tempItems
            
            items.append(itemTextField.text!)
            
            print(items)
            
        } else {
            
            items = [itemTextField.text!]
            
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        itemTextField.text = ""

        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
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
