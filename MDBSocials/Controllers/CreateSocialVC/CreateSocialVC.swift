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
    var descriptionLabel: UILabel!

    var nameTextField: UITextField!
    var descriptionTextField: UITextField!

    var datePicker: UIDatePicker!
    
    var addAPhotoButton: UIButton!
    var postSocialButton: UIButton!
    
    var eventImageView: UIImageView!
    var selectedImageView: UIImageView!

    var selectedImage: UIImage!

    var picker = UIImagePickerController()

    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Constants.lightBlue

        setupNavigationBar()
        
        setupNamePrompt()
        setupDatePicker()
        setupDescriptionPrompt()
        setupPostButton()
    }
    
    @objc func handlePostSocial() {
        performSegue(withIdentifier: "fromPostToFeedVC", sender: self)
    }
    
    @objc func handleCancelPost() {
        performSegue(withIdentifier: "fromPostToFeedVC", sender: self)
    }

}
