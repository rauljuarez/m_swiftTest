//
//  ResultsViewController.swift
//  Medical Diagnosis
//
//  Created by Raul Juarez on 30/8/16.
//  Copyright © 2016 Raul Juarez. All rights reserved.
//

import UIKit
import CoreData

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var percentLabel : UILabel!
    @IBOutlet weak var resultLabel  : UILabel!
    
    var gender          : String?
    var drugs           : Bool?
    var migraines       : Bool?
    var age             : Int?    
    var managedContext  : NSManagedObjectContext!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate     = UIApplication.sharedApplication().delegate as! AppDelegate
        self.managedContext = appDelegate.managedObjectContext
        self.checkResults()
    
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

    func checkResults() {
        
        if (self.gender == "Male" && self.age <= 15 && self.drugs == true && self.migraines == true) {
            self.percentLabel.text = "100%"
        
        } else if (self.gender == "Male" || self.age <= 15 || self.drugs == true || self.migraines == true) {
                self.percentLabel.text = "50%"
                
        } else {
            self.percentLabel.text  = "0%"
            self.resultLabel.text   = "to have Todd’s Syndrome"
        }
        
        let entity  =  NSEntityDescription.entityForName("TestData", inManagedObjectContext:managedContext)
        let Test    = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        Test.setValue(self.age, forKey: "age")
        Test.setValue(self.gender, forKey: "gender")
        Test.setValue(self.drugs, forKey: "drugs")
        Test.setValue(self.migraines, forKey: "migraines")

        do {
            try managedContext.save()
        } catch let error as NSError  {
            print("Could not save \(error), \(error.userInfo)")
        }
        
        
    }
    
    
}
