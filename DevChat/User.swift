//
//  User.swift
//  DevChat
//
//  Created by Michael L Gueterman on 3/1/17.
//  Copyright © 2017 Michael L Gueterman. All rights reserved.
//

import UIKit

struct User {
    private var _firstName: String
    private var _uid: String
    
    var uid: String {
        return _uid
    }
    
    var firstName: String {
        return _firstName
    }
    
    init(uid: String, firstName: String) {
        _uid = uid
        _firstName = firstName
    }
}
