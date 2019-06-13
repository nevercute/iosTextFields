//
//  NumbersDelegate.swift
//  TextFieldByNevercute
//
//  Created by NEVERCUTE on 30/05/2019.
//  Copyright © 2019 NEVERCUTE. All rights reserved.
//

import Foundation
import UIKit

class NumbersTextFieldDelegate: NSObject, UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if let text = textField.text {
            if text.count >= 6 && string.count > 0 {
                return false
            } else {
                return true
            }
        } else {
            return true
        }
    }
    
}

