//
//  FormViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 4/8/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {
    //go to benching video
    @IBAction func benchButton(_ sender: Any) {
        let url = URL(string: "https://www.youtube.com/watch?v=gRVjAtPip0Y")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    //go to deadlift video
    @IBAction func deadliftButton(_ sender: Any) {
        let url = URL(string: "https://www.youtube.com/watch?v=-4qRntuXBSc")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    //go to squat video
    @IBAction func squatButton(_ sender: Any) {
        let url = URL(string: "https://www.youtube.com/watch?v=Dy28eq2PjcM")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    //go to powerclean video
    @IBAction func powerCleanButton(_ sender: Any) {
        let url = URL(string: "https://www.youtube.com/watch?v=_LpPUmrKEg8")!
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
  
}
