////
////  LoginVC.swift
////  MDBSocials
////
//
//import UIKit
//import Firebase
//
//class LoginVC: UIViewController {
//
//    var logoImageView: UIImageView!
//    var loginRegisterSegControl: UISegmentedControl!
//    
//    var usernameField: UITextField!
//    var passwordField: UITextField!
//
//    var loginRegisterButton: UIButton!
//    
//    var ourUserID: String!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        view.backgroundColor = Constants.lightBlue
//        setupSegControl()
//        setupLoginRegisterButton()
//        setupTextFields()
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        navigationController?.navigationBar.isHidden = true
//        loginRegisterButton.isUserInteractionEnabled = true
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        navigationController?.navigationBar.isHidden = false
//    }
//    
//    func handleLogin() {
//        var username = ""
//        var password = ""
//        
//        username = usernameField.text!
//        password = passwordField.text!
//        
//        guard username != "" else {
//            self.displayAlert(title: "Error", message: "Username cannot be blank")
//            viewDidLoad()
//            return
//        }
//        guard password != "" else {
//            self.displayAlert(title: "Error", message: "Password cannot be blank")
//            viewDidLoad()
//            return
//        }
//        
//        // loginRegisterButton.target(forAction: pressed(email, password), withSender: self)
//        
//        debugPrint(username, password)
//
//        Auth.auth().signIn(withEmail: email, password: password, completion: { (user, error) in
//            if let error = error {
//                self.loginRegisterButton.isUserInteractionEnabled = true
//                print(error)
//                self.displayAlert(title: "There was an error", message: "Trying to sign you in")
//                return
//            } else {
//                // self.ourUserID = user?.uid
//                self.performSegue(withIdentifier: "toMainFeed", sender: self)
//            }
//         })
//    }
//    
//    @objc func handleLoginOrRegister() {
//        loginRegisterButton.isUserInteractionEnabled = false
//        if loginRegisterSegControl.selectedSegmentIndex == 0 {
//            handleLogin()
//        } else {
//            handleRegister()
//        }
//    }
//    
//    func displayAlert(title: String, message: String) {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//        alert.addAction(defaultAction)
//        self.present(alert, animated: true, completion: nil)
//    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        var destination = segue.destination as! FeedVC
//        destination.userID = ourUserID
//    }
//}
