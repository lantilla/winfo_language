//
//  LoginViewController.swift
//  language_learner
//
//  Created by Lauren Antilla on 1/13/18.
//  Copyright © 2018 Lauren Antilla. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    var ref: DatabaseReference?
    @IBOutlet weak var username: UITextField!
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        ref = Database.database().reference()
        let profilesRef = Database.database().reference(withPath: "profiles")
        if (username != nil) {
            profilesRef.child(username.text!).child("name").setValue(username.text!);
            self.performSegue(withIdentifier: "loginSegue", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
