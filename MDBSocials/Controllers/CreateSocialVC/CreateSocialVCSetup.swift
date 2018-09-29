//
//  CreateSocialVCSetup.swift
//  MDBSocials
//
//  Created by Isabella Lau on 9/28/18.
//  Copyright © 2018 Isabella Lau. All rights reserved.
//

import UIKit

extension CreateSocialVC {
    
    func setupNamePrompt() {
        nameLabel = UILabel(frame: CGRect(x: 10, y: view.frame.height / 8 - 10, width: view.frame.width / 3 - 20, height: 45))
        nameLabel.text = "Name"
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont(name: "AmericanTypewriter", size: 20.0)
        nameLabel.backgroundColor = Constants.darkBlue
        view.addSubview(nameLabel)
        
        nameTextField = UITextField(frame: CGRect(x: 10 + view.frame.width / 3, y: view.frame.height / 8 - 10, width: 3 * view.frame.width / 5, height: 40))
        nameTextField.placeholder = "Name of event"
        nameTextField.layer.cornerRadius = 20
        nameTextField.textAlignment = .center
        nameTextField.backgroundColor = .white
        view.addSubview(nameTextField)
    }
    
    func setupDatePicker() {
        dateLabel = UILabel(frame: CGRect(x: 10, y: 3 * view.frame.height / 16, width: view.frame.width / 3 - 20, height: 45))
        dateLabel.text = "Date"
        dateLabel.textAlignment = .center
        dateLabel.font = UIFont(name: "AmericanTypewriter", size: 20.0)
        dateLabel.backgroundColor = Constants.darkBlue
        view.addSubview(dateLabel)

        datePicker = UIDatePicker(frame: CGRect(x: 10 + view.frame.width / 3, y: 3 * view.frame.height / 16, width: 3 * view.frame.width / 5, height: view.frame.height / 8))
        view.addSubview(datePicker)
    }
}
