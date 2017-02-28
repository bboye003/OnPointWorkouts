//
//  CustomTableViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 2/28/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class CustomTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var items: NSMutableArray = []

    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return items.count
    
    }
    
   
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        var cellLabel = ""
        
        if let myLabel = items[indexPath.row] as? String{
            cellLabel = myLabel
        }
        
        cell.textLabel?.text = cellLabel
        
        return cell
    
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        
        if let myItems = itemsObject as? NSMutableArray {
            
            items = myItems
            
        }
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
