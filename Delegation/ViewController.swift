//
//  ViewController.swift
//  Delegation
//
//  Created by Jörg Klausewitz on 09.08.15.
//  Copyright (c) 2015 Stunlabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    // Text field outlets
    @IBOutlet weak var zipTextfield: UITextField!
    @IBOutlet weak var cashTextfield: UITextField!
    @IBOutlet weak var lockedTextfield: UITextField!
    
    // Text field delegates
    let zipDelegate = ZipTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()

    // Switch
    @IBOutlet weak var lockSwitch: UISwitch!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Wire delegates
        self.zipTextfield.delegate = zipDelegate
        self.cashTextfield.delegate = cashDelegate
        self.lockedTextfield.delegate = self
        
        
    }



    
    

}

