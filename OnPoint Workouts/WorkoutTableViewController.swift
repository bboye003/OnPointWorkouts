//
//  WorkoutTableViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 3/7/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class WorkoutTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

     var items: NSMutableArray = []
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
    
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        var cellLabel = ""
        
        if let myLabel = items[indexPath.row] as? String {
            cellLabel = myLabel
        }
        
        cell.textLabel?.text = cellLabel
       
        return cell
    
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let itemsObject = UserDefaults.standard.object(forKey: "exercises")
        
        
        if let myItems = itemsObject as? NSMutableArray {
            
            items = myItems

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
