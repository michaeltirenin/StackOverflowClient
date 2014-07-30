//
//  User.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import Foundation
import UIKit

class User: NSObject {
   
    var userID : Int?
    var userLink : NSURL?
    var userDisplayName : String?
    var userType : String? // registered, non-registered, etc.
    var userProfileImageURL : NSURL?
    
    init(userID : Int, userLink : NSURL, userDisplayName : String, userType : String, userProfileImageURL : NSURL) {
        self.userID = userID
        self.userLink = userLink
        self.userDisplayName = userDisplayName
        self.userType = userType
        self.userProfileImageURL = userProfileImageURL

    }
}
