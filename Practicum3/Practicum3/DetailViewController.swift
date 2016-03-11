//
//  DetailViewController.swift
//  Practicum3
//
//  Created by Fhict on 11/03/16.
//  Copyright © 2016 Frank Haver. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblPirateName: UILabel!
    @IBOutlet weak var lblPirateLife: UILabel!
    @IBOutlet weak var lblActiveYears: UILabel!
    @IBOutlet weak var lblCountryOfBirth: UILabel!
    @IBOutlet weak var tvComments: UITextView!
    
    var selectedPirate: Pirate?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        self.lblPirateName.text = self.selectedPirate?.name
        self.lblPirateLife.text = self.selectedPirate?.life
        self.lblActiveYears.text = self.selectedPirate?.yearsActive
        self.lblCountryOfBirth.text = self.selectedPirate?.countryOrigin
        self.tvComments.text = self.selectedPirate?.comments
    }
}
