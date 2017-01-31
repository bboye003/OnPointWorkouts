//
//  FourthViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 1/31/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var heightFtText: UITextField!
    
    var heightFt = ["1","2","3","4","5","6","7","8"]
    let picker = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
        
        heightFtText.inputView = picker
        // Do any additional setup after loading the view.
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return heightFt.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return heightFt[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        heightFtText.text = heightFt[row]
        self.view.endEditing(false)
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
