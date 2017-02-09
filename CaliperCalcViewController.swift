//
//  CaliperCalcViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 2/1/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class CaliperCalcViewController: UIViewController {

    @IBOutlet weak var maleFemaleController: UISegmentedControl!
    @IBOutlet weak var chest: UITextField!
    @IBOutlet weak var tricep: UITextField!
    @IBOutlet weak var back: UITextField!
    @IBOutlet weak var thigh: UITextField!
    @IBOutlet weak var abdominal: UITextField!
    @IBOutlet weak var midax: UITextField!
    @IBOutlet weak var subpra: UITextField!
    @IBOutlet weak var calcOutput: UILabel!
    
    /*@IBAction func maleFemale(_ sender: UISegmentedControl) {
        switch maleFemaleController.selectedSegmentIndex {
        case 0:
            
        }
        
    }
*/
    
    
    @IBAction func caliperCalc(_ sender: UIButton)
    {
        let myChest = Double(self.chest.text!)
        let myTricep = Double(self.tricep.text!)
        let myBack = Double(self.back.text!)
        let myThigh = Double(self.thigh.text!)
        let myAbdominal = Double(self.abdominal.text!)
        let myMidax = Double(self.midax.text!)
        let mySubpra = Double(self.subpra.text!)
        
        //sum of all data
        let sumOfParts1 = ((myChest! + myTricep!))
        let sumOfParts2 = ((myBack! + myThigh!))
        let sumOfParts3 = ((myAbdominal! + myMidax!))
        let sumOfParts4 = ((mySubpra!))
        //total
        let sumOfParts5 = ((sumOfParts1 + sumOfParts2 + sumOfParts3 + sumOfParts4))
        //calcOutput.text = String(sumOfParts5)

        /*var boneDenMen, bodyfat: Double
         boneDenMen = 1.112(0.00043499 * sumOfParts5) + (0.00000056 * sumOfParts5)
         boneDenMen2 = boneDenMen - (0.00012826 * age)
         bodyfat = ((4.95/boneDenMen) - 4.5) * 100
         */
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
