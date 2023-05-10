//
//  ViewController.swift
//  PhoneNumber
//
//  Created by Harun Fazlic on 10. 5. 2023..
//

import UIKit
import PhoneNumberKit

class ViewController: UIViewController {
    
    let phoneNumberKit = PhoneNumberKit()

    @IBOutlet var numberText: UITextField!
    @IBOutlet var numberValidationResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonIsCliked(_ sender: UIButton) {
        do {
            let phoneNumber = try phoneNumberKit.parse(numberText.text ?? "")
            numberValidationResult.text = "Phone number is valid"
            numberValidationResult.textColor = .green
        } catch {
            numberValidationResult.text = "Phone number is not valid"
            numberValidationResult.textColor = .red
        }
    }
    

}

