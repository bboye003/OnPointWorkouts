//
//  CaliperCalcViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 2/1/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class CaliperCalcViewController: UIViewController {
    //Intitaize labels

    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var chest: UITextField!
    @IBOutlet weak var tricep: UITextField!
    @IBOutlet weak var back: UITextField!
    @IBOutlet weak var thigh: UITextField!
    @IBOutlet weak var abdominal: UITextField!
    @IBOutlet weak var midax: UITextField!
    @IBOutlet weak var subpra: UITextField!
    @IBOutlet weak var calcOutput: UILabel!
    
    
    @IBAction func tricepButton(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-tricep.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        

    }
    
    @IBAction func chestButton(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-chest.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        

    }
    
    @IBAction func thighButton(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-front-thigh.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        

    }
    
    //subscalar
    @IBAction func backButton(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-subscapular.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        

    }

    
    @IBAction func abButton(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-abdominal.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        

    }
    
    @IBAction func midaxillaryButton(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-axilla.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
        

    }
    
    @IBAction func subprailiacButton(_ sender: Any) {
        let url = URL(string: "http://www.topendsports.com/testing/skinfold-supraspinale.htm")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }

        
    }
    
    
    @IBAction func caliperCalc(_ sender: UIButton)
    {
        let myChest = Double(self.chest.text!)
        let myTricep = Double(self.tricep.text!)
        let myBack = Double(self.back.text!)
        let myThigh = Double(self.thigh.text!)
        let myAbdominal = Double(self.abdominal.text!)
        let myMidax = Double(self.midax.text!)
        let mySubpra = Double(self.subpra.text!)
        let myAge = Double(self.age.text!)
        //sum of all data
        let sumOfParts1 = ((myChest! + myTricep!))
        let sumOfParts2 = ((myBack! + myThigh!))
        let sumOfParts3 = ((myAbdominal! + myMidax!))
        let sumOfParts4 = ((mySubpra!))
        //total
        
        let sumOfParts5 = ((sumOfParts1 + sumOfParts2 + sumOfParts3 + sumOfParts4))
        
        var boneDenMen: Double
        var bodyfat: Double
        boneDenMen = 1.112 - (0.00043499 * sumOfParts5) + (0.00000056 * (sumOfParts5 * sumOfParts5))
        let boneDenMen2 = boneDenMen - (0.00028826 * myAge!)
        bodyfat = ((4.95/boneDenMen2) - 4.5) * 100
        bodyfat = (round(100 * bodyfat) / 100)
        
        calcOutput.text = String("Bodyfat: \(bodyfat)%")
        
    }
    
    
  
}
