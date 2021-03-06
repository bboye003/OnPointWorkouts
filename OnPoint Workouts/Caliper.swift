//
//  CaliperViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 2/7/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class CaliperViewController: UIViewController {

    
    //understanding of how to do measurements
    @IBAction func tricepsURL(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-tricep.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        
    }
    
    @IBAction func chestURL(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-chest.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        

    }
    
    @IBAction func thighURL(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-front-thigh.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        

    }
    @IBAction func backURL(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-subscapular.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        

    }
    
    @IBAction func abURL(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-abdominal.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        

    }
    
    @IBAction func midURL(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-axilla.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        

    }
  
    @IBAction func subpURL(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-supraspinale.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        

    }

    
    
    //User Input
    @IBOutlet var ageTextField: UITextField!

    @IBOutlet var tricepTextField: UITextField!
    
    @IBOutlet var chestTextField: UITextField!
    
    @IBOutlet var thighTextField: UITextField!
    
    @IBOutlet var backTextField: UITextField!
    
    @IBOutlet var abTextField: UITextField!
    
    @IBOutlet var midTextField: UITextField!
    
    @IBOutlet var subTextField: UITextField!
    
    @IBOutlet var calcOutput: UILabel!
    @IBOutlet var genderSwitch: UISwitch!

    @IBAction func calculate(_ sender: Any) {
        
         let chest = Double(self.chestTextField.text!)!
         let tricep = Double(self.tricepTextField.text!)!
         let back = Double(self.backTextField.text!)!
         let thigh = Double(self.thighTextField.text!)!
         let ab = Double(self.abTextField.text!)!
         let mid = Double(self.midTextField.text!)!
         let sub = Double(self.subTextField.text!)!
         let age = Double(self.ageTextField.text!)!
         var boneDen, bodyfat: Double
         //sum of all data
         let sumOfParts = (chest + tricep + back + thigh + ab + mid + sub)
         //total
        if (genderSwitch.isOn) {
            boneDen = (1.097 - (0.00046971 * sumOfParts) + (0.00000056 * (sumOfParts * sumOfParts)) - (0.00012828 * age))
            bodyfat = ((4.95/boneDen) - 4.5) * 100
            bodyfat = (round(100 * bodyfat) / 100)
            calcOutput.text = String("Bodyfat: \(bodyfat)%")
            

            
        } else {
            boneDen = (1.112 - (0.00043499 * sumOfParts) + (0.00000056 * (sumOfParts * sumOfParts)) - (0.00028826 * age))
            bodyfat = ((4.95/boneDen) - 4.5) * 100
            bodyfat = (round(100 * bodyfat) / 100)
            calcOutput.text = String("Bodyfat: \(bodyfat)%")
            
        }
  
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
}
