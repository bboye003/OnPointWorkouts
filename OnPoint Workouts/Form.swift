//
//  FormViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 4/8/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
    //Goes to Benching video
    @IBAction func benchButton(_ sender: Any) {
        let url = URL(string: "https://www.youtube.com/watch?v=gRVjAtPip0Y")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    //Goes to Deadlift video 
    @IBAction func deadliftButton(_ sender: Any) {
        let url = URL(string: "https://www.youtube.com/watch?v=-4qRntuXBSc")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func squatButton(_ sender: Any) {
        let url = URL(string: "https://www.youtube.com/watch?v=Dy28eq2PjcM")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    @IBAction func powerCleanButton(_ sender: Any) {
        let url = URL(string: "https://www.youtube.com/watch?v=_LpPUmrKEg8")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
  
}