//
//  ResultsViewController.swift
//  Medical Diagnosis
//
//  Created by Raul Juarez on 30/8/16.
//  Copyright © 2016 Raul Juarez. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var gender      : String?
    var drugs       : Bool?
    var migraines   : Bool?
    var age         : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func closeResults(sender: AnyObject) {
        
        if let vc = self.presentingViewController {

            let transition      = CATransition()
            transition.duration = 0.5
            transition.type     = "fade"
            transition.subtype  = "fromBottom"

            vc.view.layer.addAnimation(transition, forKey: kCATransition)
            vc.dismissViewControllerAnimated(false, completion:nil)
        }
    }

    
    
}
