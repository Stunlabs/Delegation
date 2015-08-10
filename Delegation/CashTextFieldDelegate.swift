//
//  CashTextFieldDelegate.swift
//  Delegation
//
//  Created by Jörg Klausewitz on 09.08.15.
//  Copyright (c) 2015 Stunlabs. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    
    func textFieldDidBeginEditing(textField: UITextField) {
        
        textField.text = ""
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        var input = textField.text.toInt()
        println(input)
        
        if input != nil {
  
            var formatter = NSNumberFormatter()
            formatter.locale = NSLocale(localeIdentifier: "en_US")
            formatter.numberStyle = .CurrencyStyle
            textField.text = formatter.stringFromNumber( input! )
            
        }
        

        
        return true
    }
    
    

    
    
}