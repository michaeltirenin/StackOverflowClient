//
//  User.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import Foundation

class User {
   
    var userID : Int?
    var userLink : NSURL?
    var userDisplayName : String?
    var userType : String? // registered, non-registered, etc.
    var userProfileImageURL : NSURL?
    
    init(itemDict: NSDictionary) {
        
        self.userID = itemDict["user_id"] as? Int
        self.userLink = itemDict["link"] as? NSURL
        self.userDisplayName = itemDict["display_name"] as? String
        self.userType = itemDict["user_type"] as? String
        self.userProfileImageURL = itemDict["profile_image"] as? NSURL

    }
}
