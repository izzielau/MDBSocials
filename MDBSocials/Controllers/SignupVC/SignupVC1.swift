//
//  LoginVC.swift
//  MDBSocials
//

import UIKit
import Firebase

class SignupVC1: UIViewController {
    
    var logoImageView: UIImageView!
    
    var nameField: UITextField!
    var emailField: UITextField!
    var usernameField: UITextField!
    var passwordField: UITextField!
    
    var switchSignInTypeButton: UIButton!
    var registerButton: UIButton!
    
    var ourUserID: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Constants.lightBlue
        setupLogo()
        setupSwitchButton()
        setupRegisterButton()
        setupTextFields()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = false
    }
    
    @objc func handleSignup() {
        var name = ""
        var email = ""
        var username = ""
        var password = ""
        
        name = nameField.text!
        email = emailField.text!
        username = usernameField.text!
        password = passwordField.text!
        
        guard name != "" else {
            self.displayAlert(title: "Error", message: "Name cannot be blank")
            viewDidLoad()
            return
        }
        guard email != "" else {
            self.displayAlert(title: "Error", message: "Email cannot be blank")
            viewDidLoad()
            return
        }
        guard username != "" else {
            self.displayAlert(title: "Error", message: "Username cannot be blank")
            viewDidLoad()
            return
        }
        guard password != "" else {
            self.displayAlert(title: "Error", message: "Password cannot be blank")
            viewDidLoad()
            return
        }
        
        performSegue(withIdentifier: "fromSToFeedVC", sender: self)
    }
    
    func displayAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(defaultAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func handleSwitch() {
        performSegue(withIdentifier: "toLoginVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}