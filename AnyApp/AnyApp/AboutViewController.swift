//
//  AboutViewController.swift
//  AnyApp
//
//  Created by Fhict on 10/03/16.
//  Copyright © 2016 Frank Haver. All rights reserved.
//

import UIKit

class AboutViewController : UIViewController{
    
    @IBOutlet weak var btnEasterEgg: UIButton!
    @IBOutlet weak var btnShowTextField: UIButton!
    @IBOutlet weak var tfTextField: UITextField!
    
    @IBAction func showEasterEgg(sender : UIButton){
        
    }
    
    @IBAction func showTextField(sender : UIButton){
        let alertController = UIAlertController(title: "ALERT", message: tfTextField.text, preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}
