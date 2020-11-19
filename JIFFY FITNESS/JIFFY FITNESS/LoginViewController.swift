//
//  LoginViewController.swift
//  JIFFY FITNESS
//
//  Created by Jonathan Leibovici on 11/10/20.
//  Copyright © 2020 JIFFY FITNESS. All rights reserved.
//

import UIKit
import Parse
import AlamofireImage

class LoginViewController: UIViewController {

    
    
    @IBOutlet weak var userNameField: UITextField!
    
    
    @IBOutlet weak var PasswordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func OnSignUp(_ sender: Any) {
        let user = PFUser()
        //let is for const
        user.username = userNameField.text
        user.password = PasswordField.text
        user.signUpInBackground { (success, error) in
            if success{
                self.performSegue(withIdentifier: "LoginSegue", sender: nil)
            }else{
                print("error:\(String(describing: error?.localizedDescription))")
            }
        }
    }
    
    
    
    @IBAction func OnLogin(_ sender: Any) {
        let username = userNameField.text!
        let password = PasswordField.text!
        
        PFUser.logInWithUsername(inBackground:username, password:password){(user,error)in
            if user != nil{
                self.performSegue(withIdentifier: "LoginSegue", sender: nil)
            }else{
                print("error:\(String(describing: error?.localizedDescription))")
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
