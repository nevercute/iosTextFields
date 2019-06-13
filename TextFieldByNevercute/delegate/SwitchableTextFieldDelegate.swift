//
//  SwitchableTextFieldDelegate.swift
//  TextFieldByNevercute
//
//  Created by NEVERCUTE on 30/05/2019.
//  Copyright © 2019 NEVERCUTE. All rights reserved.
//

import Foundation
import UIKit

class SwitchableTextFieldDelegate: NSObject, UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(textField.text ?? "Switchable Text Field")
        return true
    }
}
