//
//  CrossFitViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 2/23/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class CrossFitViewController: UIViewController {

    //TODO: Mobility video
    
    @IBAction func WODlink(_ sender: UIButton) {
        let url = URL(string: "https://www.crossfit.com/workout/")!
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
        }
    
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
