//
//  FourthViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 1/31/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var heightFtBox: UITextField!
    @IBOutlet weak var dropDownHeightFt: UIPickerView!
    
    var ftHeight = ["1","2","3","4","5","6","7","8"]

    override func viewDidLoad() {
        super.viewDidLoad()
        dropDownHeightFt.isHidden = true;
        heightFtBox.text = ftHeight[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return ftHeight[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return ftHeight.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        heightFtBox.text = ftHeight[row]
        dropDownHeightFt.isHidden = true
    }
    
    func heightFtBoxEditing(textField: UITextField) -> Bool
    {
        dropDownHeightFt.isHidden = false
        return false
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
