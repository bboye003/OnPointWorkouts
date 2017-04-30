//
//  newLoginViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 3/25/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class newLoginViewController: UIViewController {

    
    @IBOutlet weak var userEmailFieldText: UITextField!
    @IBOutlet weak var userPasswordFieldText: UITextField!
    
       

    @IBAction func loginButtonTapped(_ sender: Any) {
        
        if let email = userEmailFieldText.text, let password = userPasswordFieldText.text {
            FIRAuth.auth()?.signIn(withEmail: email, password: password) { (user, error) in
                //Sign in the user
                if error = nil {
                    //perform seque
                    
                } else {
                    FIRAuth.auth()?.createUser(withEmail: email, password: password) { (user, error) in
                        // ...
                        if error != nil {
                            print("Can't sign-in user!")
                        } else {
                            //perform seque
                        }
                    }

                }
            }
        }
        
        
    }
    
    func displayMyAlertMessage(userMessage:String) {
        
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true, completion:nil)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


 
   
}
