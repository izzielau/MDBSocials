////
////  LoginVC - UISetup.swift
////  MDBSocials
////
//
//import UIKit
//
//extension SignupVC {
//    
//    func setupSwitchButton() {
//        switchSignInTypeButton = UIButton(frame: CGRect(x: view.frame.width / 3, y: 20, width: view.frame.width / 4, height: 50))
//        switchSignInTypeButton.backgroundColor = Constants.darkBlue
//        switchSignInTypeButton.setTitle("Log In", for: UIControl.State())
//        switchSignInTypeButton.setTitleColor(UIColor.white, for: UIControl.State())
//        switchSignInTypeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
//        switchSignInTypeButton.addTarget(self, action: #selector(handleLoginOrRegister), for: .touchUpInside)
//        view.addSubview(switchSignInTypeButton)
//    }
//    
//    func setupLoginRegisterButton() {
//        loginRegisterButton = UIButton(frame: CGRect(x: 20, y: view.frame.height - 100, width: view.frame.width - 40, height: 60))
//        loginRegisterButton.backgroundColor = Constants.darkBlue
//        loginRegisterButton.setTitle("Register", for: UIControl.State())
//        loginRegisterButton.setTitleColor(UIColor.white, for: UIControl.State())
//        loginRegisterButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
//        loginRegisterButton.addTarget(self, action: #selector(handleLoginOrRegister), for: .touchUpInside)
//        view.addSubview(loginRegisterButton)
//    }
//    
//    func setupTextFields() {
//        nameField = UITextField(frame: CGRect(x: 10, y: view.frame.height / 2, width: view.frame.width - 20, height: 40))
//        nameField.placeholder = "Name"
//        nameField.layer.cornerRadius = 20
//        nameField.textAlignment = .center
//        nameField.backgroundColor = .white
//        view.addSubview(nameField)
//        
//        emailField = UITextField(frame: CGRect(x: 10, y: view.frame.height / 2 + 50, width: view.frame.width - 20, height: 40))
//        emailField.placeholder = "Email Address"
//        emailField.layer.cornerRadius = 20
//        emailField.textAlignment = .center
//        emailField.backgroundColor = .white
//        view.addSubview(emailField)
//        
//        usernameField = UITextField(frame: CGRect(x: 10, y: view.frame.height / 2 + 100, width: view.frame.width - 20, height: 40))
//        usernameField.placeholder = "Username"
//        usernameField.layer.cornerRadius = 20
//        usernameField.textAlignment = .center
//        usernameField.backgroundColor = .white
//        view.addSubview(usernameField)
//        
//        passwordField = UITextField(frame: CGRect(x: 10, y: view.frame.height / 2 + 150, width: view.frame.width - 20, height: 40))
//        passwordField.placeholder = "Password"
//        passwordField.layer.cornerRadius = 20
//        passwordField.textAlignment = .center
//        passwordField.isSecureTextEntry = true
//        passwordField.backgroundColor = .white
//        view.addSubview(passwordField)
//    }
//}
