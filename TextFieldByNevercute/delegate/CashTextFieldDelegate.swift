//
//  CashTextFieldDelegate.swift
//  TextFieldByNevercute
//
//  Created by NEVERCUTE on 30/05/2019.
//  Copyright © 2019 NEVERCUTE. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    fileprivate var formattedString: String!
    fileprivate var userNumber: [Int] = [Int]()
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        //we're taking only input string on every touch and add them to array
        //but if backspace sent we need to remove last digit or do nothing
        if let num = Int(string) {
            userNumber.append(num)
        } else {
            if userNumber.count != 0 {
                userNumber.removeLast()
            }
        }
        textField.text = clearDoubleValue()
        return false
    }

    //we're create string from user numbers array
    //and then create formatter and return formatted string for currencies
    fileprivate func clearDoubleValue() -> String {
        guard userNumber.count > 0 else {return "$0.00"}
        var string = ""
        
        for num in userNumber {
            string.append("\(num)")
        }
        
        if var doubleValue = Double(string) {
            doubleValue /= 100.0
            
            let formatter = NumberFormatter()
            formatter.minimumFractionDigits = 2
            formatter.maximumFractionDigits = 2
            formatter.nilSymbol = "0"
            formatter.currencySymbol = "$"
            formatter.numberStyle = .currency
            formatter.currencyCode = "USD"
            formatter.locale = Locale(identifier: "en_US")
            
            return formatter.string(from: NSNumber(value: doubleValue))!
        } else {
            return "$0.00"
        }
    }
}
