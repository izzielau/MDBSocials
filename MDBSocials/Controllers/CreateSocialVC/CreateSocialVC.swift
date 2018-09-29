//
//  CreateSocialVC.swift
//  MDBSocials
//
//  Created by Isabella Lau on 9/28/18.
//  Copyright © 2018 Isabella Lau. All rights reserved.
//

import UIKit

class CreateSocialVC: UIViewController {
    
    var nameLabel: UILabel!
    var dateLabel: UILabel!
    
    var nameTextField: UITextField!

    var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Constants.lightBlue

        setupNamePrompt()
        setupDatePicker()
    }

}
