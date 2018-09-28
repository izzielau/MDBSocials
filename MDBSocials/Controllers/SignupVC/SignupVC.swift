////
////  LoginVC.swift
////  MDBSocials
////
//
//import UIKit
//import Firebase
//
//class SignupVC: UIViewController {
//    
//    var logoImageView: UIImageView!
//    
//    var nameField: UITextField!
//    var emailField: UITextField!
//    var usernameField: UITextField!
//    var passwordField: UITextField!
//    
//    var switchSignInTypeButton: UIButton!
//    var loginRegisterButton: UIButton!
//    
//    var ourUserID: String!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        view.backgroundColor = Constants.lightBlue
//        setupSwitchButton()
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
//        var email = ""
//        var password = ""
//        
//        email = emailField.text!
//        password = passwordField.text!
//        
//        guard email != "" else {
//            self.displayAlert(title: "Error", message: "Email cannot be blank")
//            viewDidLoad()
//            return
//        }
//        guard password != "" else {
//            self.displayAlert(title: "Error", message: "Password cannot be blank")
//            viewDidLoad()
//            return
//        }
//        
//        loginRegisterButton.target(forAction: pressed(email, password), withSender: self)
//        
//        debugPrint(email, password)
//        /* PART 1A FINISH*/
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
//        })
//    }
//    
//    func handleRegister() {
//        var name = ""
//        var username = ""
//        var email = ""
//        var password = ""
//        
//        name = nameField.text!
//        email = emailField.text!
//        username = usernameField.text!
//        password = passwordField.text!
//        
//        guard name != "" else {
//            self.displayAlert(title: "Error", message: "Name cannot be blank")
//            viewDidLoad()
//            return
//        }
//        guard email != "" else {
//            self.displayAlert(title: "Error", message: "Email cannot be blank")
//            viewDidLoad()
//            return
//        }
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
//        Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
//            if let error = error {
//                self.loginRegisterButton.isUserInteractionEnabled = true
//                print(error)
//                self.displayAlert(title: "There was an error", message: "Trying to make you")
//                return
//            } else {
//                
//                guard let uid = user?.user.uid else {
//                    return
//                }
//                
//                let ref = Database.database().reference()
//                let userRef = ref.child("users").child(uid)
//                let values = ["name": name, "username": username, "email": email]
//                
//                userRef.updateChildValues(values, withCompletionBlock: { (error, ref) in
//                    if error != nil {
//                        print(error)
//                        return
//                    } else {
//                        self.ourUserID = user?.user.uid
//                        self.performSegue(withIdentifier: "toMainFeed", sender: self)
//                    }
//                })
//            }
//        })
//    }
//    
//    func displayAlert(title: String, message: String) {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
//        alert.addAction(defaultAction)
//        self.present(alert, animated: true, completion: nil)
//    }
//    
//    @objc func handleLoginRegisterChange() {
//        var destination = segue.destination as! LoginVC
//    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        var destination = segue.destination as! FeedVC
//        destination.userID = ourUserID
//    }
//}
