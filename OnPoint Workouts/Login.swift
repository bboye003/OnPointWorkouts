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

    
    @IBOutlet weak var emailFieldText: UITextField!
    @IBOutlet weak var passwordFieldText: UITextField!
    

    @IBAction func loginButtonTapped(_ sender: Any) {
        
        //TODO all fields are typed into
        /*if (emailFieldText) || (passwordFieldText = "") {
            self.displayMyAlertMessage(userMessage: "Fill in email and password!");
            return;
            
        }*/
        
        if let email = emailFieldText.text, let password = passwordFieldText.text {
            FIRAuth.auth()?.signIn(withEmail: email, password: password) { (user, error) in
                if user != nil {
                    self.performSegue(withIdentifier: "SignIn", sender: self)

                } else {
                    self.displayMyAlertMessage(userMessage: "Email or Password are incorrect or do not exist!")
                }
            }
        }
        
        
    }
    //Displays message when called on
    func displayMyAlertMessage(userMessage:String) {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true, completion:nil)
        
    }
    //return keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        emailFieldText.resignFirstResponder()
        passwordFieldText.resignFirstResponder()
    }


 
   
}
