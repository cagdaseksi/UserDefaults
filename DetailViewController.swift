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
        if let firstName = UserDefaults.standard.string(forKey: "firstName"), let lastName = UserDefaults.standard.string(forKey: "lastName"){
            
            lblText.text = "Welcome \(firstName) \(lastName)"
            print("\(firstName) \(lastName)")
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
