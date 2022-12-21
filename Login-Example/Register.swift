//
//  Register.swift
//  Login-Example
//
//  Created by Franklin Bladimir on 12/20/22.
//

import UIKit
import Firebase

class Register: UIViewController {

    //Email Text Field
    @IBOutlet weak var emailTextField: UITextField!
    
    //Password Text Field
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    //Create Account Button Clicked Action
    @IBAction func createAccountClicked(_ sender: UIButton) {
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { firebaseResult, error in
            if let e = error {
                print("error")
            } else {
                //Go to homescreen
                self.performSegue(withIdentifier: "goToCreate", sender: self)
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
