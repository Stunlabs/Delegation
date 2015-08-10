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
    
    // Label to show results
    @IBOutlet weak var resultLbl: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        lockSwitch.onTintColor = UIColor.redColor()
        
        
        
        // Wire delegates
        self.zipTextfield.delegate = zipDelegate
        self.cashTextfield.delegate = cashDelegate
        self.lockedTextfield.delegate = self
        
        
        
        
        
    }


    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var isLocked: Bool

        if lockSwitch.on {
            isLocked = false
        } else {
            isLocked = true
        }

        return isLocked
    }
    
    
    
    
    
    
    
    

}

