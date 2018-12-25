//
//  DetailViewController.swift
//  UserDefaults
//
//  Created by cagdas on 25.12.2018.
//  Copyright © 2018 cagdas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var lblText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // read user defaults.
        if let username = UserDefaults.standard.string(forKey: "username"), let password = UserDefaults.standard.string(forKey: "password"){
            
            lblText.text = "Welcome \(username) \(password)"
            print("\(username) \(password)")
        }
        
        // Do any additional setup after loading the view.
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
