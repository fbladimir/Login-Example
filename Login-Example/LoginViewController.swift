//
//  LoginViewController.swift
//  Login-Example
//
//  Created by Franklin Bladimir on 12/20/22.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    //Login Text Field
    @IBOutlet weak var loginTextField: UITextField!
    
    //Password Text Field
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    //Login button clicked
    @IBAction func LoginClicked(_ sender: UIButton) {
        guard let email = loginTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { firebaseResult, error in
            if let e = error {
                print("error")
            } else {
                //Go to homescreen
                self.performSegue(withIdentifier: "goToNext", sender: self)
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
