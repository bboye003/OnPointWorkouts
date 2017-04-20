//
//  WeightLogViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 4/12/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class WeightLogViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet var logTableView: UITableView!
    
    var userWeight: [UserWeight] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logTableView.dataSource = self
        logTableView.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //get data from core data
        getData()
        
        //reload table
        logTableView.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userWeight.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let weight = userWeight[indexPath.row]
        
        
        cell.textLabel?.text = weight.weight! + " " + weight.units! + " " + weight.date!

        
        
        return cell
    }
    
    
    func getData() {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        do {
        userWeight = try context.fetch(UserWeight.fetchRequest())
        } catch{
            print("Could not get data!")
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        if editingStyle == .delete {
            let weight = userWeight[indexPath.row]
            context.delete(weight)
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            do {
                userWeight = try context.fetch(UserWeight.fetchRequest())
            } catch{
                print("Could not get data!")
            }

        }
        logTableView.reloadData()
    }
    
    
    
}
