//
//  newLoginViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 3/25/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class newLoginViewController: UIViewController {

    
    @IBOutlet weak var userEmailFieldText: UITextField!
    
    @IBOutlet weak var userPasswordFieldText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func loginButtonTapped(_ sender: Any) {
        
        let userEmail = userEmailFieldText.text
        let userPassword = userPasswordFieldText.text
        
        let userEmailStored = UserDefaults.standard.string(forKey: "userEmail")
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword")

        
        if (userEmailStored == userEmail) {
            if (userPasswordStored == userPassword) {
                //login successful
                UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
                UserDefaults.standard.synchronize()
                self.dismiss(animated: true, completion: nil)
            }
        }
        
    }
    
    
  
   
}
