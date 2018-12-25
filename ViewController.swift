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
        
        //Saving String
        UserDefaults.standard.set("cagdas", forKey: "name")
        
        //Retrieving String
        let name = UserDefaults.standard.string(forKey: "name") ?? ""
        print(name)
        
        //Saving Boolean value
        UserDefaults.standard.set(true, forKey: "userlogin")
        
        //Retrieving Boolean value
        let status = UserDefaults.standard.bool(forKey: "userlogin") ?? false
        print(status)
        
        //class
        Defaults.save("cagdas", "eksi")
        
        //get firstName
        let firstName = Defaults.get.firstName
        print(firstName)
        
        //get lastName
        let lastName = Defaults.get.lastName
        print(lastName)
        
        //clear
        Defaults.clearUserData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAction(_ sender: Any) {
        
        UserDefaults.standard.setValue(txtUserName.text, forKey: "firstName")
        UserDefaults.standard.setValue(txtPassword.text, forKey: "lastName")
        UserDefaults.standard.synchronize()
        
    }
    
}

