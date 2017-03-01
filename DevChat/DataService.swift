//
//  DataService.swift
//  DevChat
//
//  Created by Michael L Gueterman on 3/1/17.
//  Copyright © 2017 Michael L Gueterman. All rights reserved.
//

import Foundation
import FirebaseDatabase

class DataService {
    private static let _instance = DataService()
    
    static var instance: DataService {
        return _instance
    }
    
    var mainRef: FIRDatabaseReference {
        return FIRDatabase.database().reference()
    }
    
    func saveUser(uid: String) {
        let profile: Dictionary<String, Any> = ["firstName": "", "lastName": ""]
        mainRef.child("users").child("uid").child("profile").setValue(profile)
    }
}
