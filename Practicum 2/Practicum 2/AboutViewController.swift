//
//  AboutViewController.swift
//  Practicum 2
//
//  Created by Fhict on 10/03/16.
//  Copyright © 2016 Frank Haver. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var textFieldToBeShown: UITextField!
    
    @IBAction func btnShowTextField(sender : UIButton){
        let alertView =
            UIAlertView(
                title: "Kijk die textfield", message: textFieldToBeShown.text, delegate: nil, cancelButtonTitle: "done!")
        alertView.show()
    }
    
}

