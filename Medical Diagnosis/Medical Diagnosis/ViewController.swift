//
//  ViewController.swift
//  Medical Diagnosis
//
//  Created by Raul Juarez on 29/8/16.
//  Copyright © 2016 Raul Juarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var gendePicker          : UIPickerView!
    @IBOutlet weak var ageRangePicker       : UIPickerView!
    @IBOutlet weak var oftenPicker          : UIPickerView!
    
    @IBOutlet weak var migrainesSegmented   : UISegmentedControl!
    @IBOutlet weak var drgusSegmented       : UISegmentedControl!
    
    @IBOutlet weak var saveButton           : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Loading the story for the patient.
        
        
        // We start 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

