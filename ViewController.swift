//
//  ViewController.swift
//  UserDefaults
//
//  Created by cagdas on 9.12.2018.
//  Copyright © 2018 cagdas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAction(_ sender: Any) {
        
        // create user defaults.
        UserDefaults.standard.setValue(txtUserName.text, forKey: "username")
        UserDefaults.standard.setValue(txtPassword.text, forKey: "password")
        UserDefaults.standard.synchronize()
        
        // read user defaults.
        if let username = UserDefaults.standard.string(forKey: "username") {
            
            lblMessage.text = "Welcome to \(username)"
            print(username)
        }
        
    }
    
}

