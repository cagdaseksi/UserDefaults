//
//  Default.swift
//  UserDefaults
//
//  Created by cagdas on 25.12.2018.
//  Copyright © 2018 cagdas. All rights reserved.
//

import Foundation

struct Defaults {
    
    static let (firstNameKey, lastNameKey) = ("firstNameKey", "lastNameKey")
    static let userSessionKey = "usersession"
    
    struct Model {
        var firstName: String?
        var lastName: String?
        
        init(_ json: [String: String]) {
            self.firstName = json[firstNameKey]
            self.lastName = json[lastNameKey]
        }
    }
    
    static var save = { (firstName: String, lastName: String) in
        UserDefaults.standard.set([firstNameKey: firstName, lastNameKey: lastName], forKey: userSessionKey)
    }
    
    static var get = { _ -> Model in
        return Model((UserDefaults.standard.value(forKey: userSessionKey) as? [String: String]) ?? [:])
    }(())
    
    static func clearUserData(){
        UserDefaults.standard.removeObject(forKey: userSessionKey)
    }
}
