//
//  ZipTextFieldDelegate.swift
//  Delegation
//
//  Created by Jörg Klausewitz on 09.08.15.
//  Copyright (c) 2015 Stunlabs. All rights reserved.
//

import Foundation
import UIKit

class ZipTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        let newLength = count(textField.text.utf16) + count(string.utf16) - range.length
        return newLength <= 5
        
    }
    
    
    
    
}
