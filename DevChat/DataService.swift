//
//  DataService.swift
//  DevChat
//
//  Created by Michael L Gueterman on 3/1/17.
//  Copyright © 2017 Michael L Gueterman. All rights reserved.
//

import Foundation
import FirebaseDatabase


let FIR_CHILD_USERS = "users"
let FIR_CHILD_PROFILE = "profile"

class DataService {
    private static let _instance = DataService()
    
    static var instance: DataService {
        return _instance
    }
    
    var mainRef: FIRDatabaseReference {
        return FIRDatabase.database().reference()
    }
    
    var usersRef: FIRDatabaseReference {
        return mainRef.child(FIR_CHILD_USERS)
    }
    
    func saveUser(uid: String) {
        let profile: Dictionary<String, Any> = ["firstName": "", "lastName": ""]
        mainRef.child(FIR_CHILD_USERS).child(uid).child(FIR_CHILD_PROFILE).setValue(profile)
    }
}
