//
//  ViewController.swift
//  TextFieldByNevercute
//
//  Created by NEVERCUTE on 30/05/2019.
//  Copyright © 2019 NEVERCUTE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var switchableTextField: UITextField!
    @IBOutlet weak var textFieldSwitchButton: UISwitch!
    
    let numbersDelegate = NumbersTextFieldDelegate()
    let cashTextDelegate = CashTextFieldDelegate()
    let switchableTextDelegate = SwitchableTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initViewComponents()
    }

    
    fileprivate func initViewComponents(){
        self.numberTextField.delegate = numbersDelegate
        self.cashTextField.delegate = cashTextDelegate
        self.switchableTextField.delegate = switchableTextDelegate
        
        self.switchableTextField.isEnabled = false
        self.textFieldSwitchButton.isOn = false
        
    }
    
    @IBAction func switchTrigger(_ switchButton: UISwitch) {
        toggleSwitchText(switchButton.isOn)
    }
    
    fileprivate func toggleSwitchText(_ isEnabled: Bool){
        self.switchableTextField.isEnabled = isEnabled
    }

}

