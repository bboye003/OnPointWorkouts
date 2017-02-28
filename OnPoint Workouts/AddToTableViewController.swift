//
//  AddToTableViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 2/28/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class AddToTableViewController: UIViewController {

    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func add(_ sender: Any) {
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        var items: NSMutableArray
        
        if let myItems = itemsObject as? NSMutableArray {
            
            items = myItems
            
            items.addObjects(from: [itemTextField.text!])
        } else {
            
            items = [itemTextField.text!]
        
        }
        
        UserDefaults.standard.set(items, forKey: "items")
        
        itemTextField.text = ""
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
