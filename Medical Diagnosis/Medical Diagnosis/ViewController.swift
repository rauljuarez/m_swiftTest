//
//  ViewController.swift
//  Medical Diagnosis
//
//  Created by Raul Juarez on 29/8/16.
//  Copyright © 2016 Raul Juarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ageTextField         : UITextField!
    
    @IBOutlet weak var migrainesSegmented   : UISegmentedControl!
    @IBOutlet weak var drugsSegmented       : UISegmentedControl!
    @IBOutlet weak var genderSegmented      : UISegmentedControl!
    
    @IBOutlet weak var saveButton           : UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveAndSend(sender: AnyObject) {
        
        var gender      : String?
        var drugs       : Bool      = false
        var migraines   : Bool      = false
        
        
        if(genderSegmented.selectedSegmentIndex == -1) {
            print("Must select a value for your gender.")
            
        } else {
            gender = genderSegmented.titleForSegmentAtIndex(genderSegmented.selectedSegmentIndex)!
        }
     
        if(migrainesSegmented.selectedSegmentIndex == -1) {
            print("Must select a value for migraines.")
        } else {
            
            if (migrainesSegmented.selectedSegmentIndex == 1) {
                migraines = true
                
            }
            
        }
        
        
        if(drugsSegmented.selectedSegmentIndex == -1) {
            print("Must select a value for drugs consume.")
            
        } else {
            if (drugsSegmented.selectedSegmentIndex == 1) {
                drugs = true
                
            }
        }
        
        if (self.ageTextField.text!.characters.count == 0 || self.ageTextField.text == "0") {
            print("Must Enter a value for age.")
            
        }
        
        saveData(gender!, migraines: migraines, drugs: drugs, age: Int(self.ageTextField.text!)!)
        
        
        
        
    }
    
    func saveData(gender: String, migraines: Bool, drugs: Bool, age: Int) {
        
        let resultsVC       = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsVC") as! ResultsViewController
        resultsVC.gender    = gender
        resultsVC.migraines = migraines
        resultsVC.drugs     = drugs
        resultsVC.age       = age
        
        self.presentViewController(resultsVC, animated: true, completion: nil)
        
    }
}

