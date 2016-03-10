//
//  EasterEggViewController.swift
//  AnyApp
//
//  Created by Fhict on 10/03/16.
//  Copyright © 2016 Frank Haver. All rights reserved.
//

import UIKit

class EasterEggViewController : UIViewController{
    
    @IBOutlet weak var btnCloseEasterEgg: UIButton!
    
    @IBAction func closeEasterEgg(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
