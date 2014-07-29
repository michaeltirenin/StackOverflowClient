//
//  UserTests.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit
import XCTest

class UserTests: XCTestCase {
    
    var userID : Double = 3814799
    var userLink : NSURL = NSURL(string: "http://stackoverflow.com/users/3814799/jake")
    var userDisplayName : String = "Jake"
    var userType : String = "registered"
    var userProfileImageURL : NSURL = NSURL(string: "https://www.gravatar.com/avatar/b1c2b95d26464f8ff8b03d8580df4fcc?s=128&d=identicon&r=PG&f=1")
    
    var user = User(userID: 3814799, userLink: NSURL(string: "http://stackoverflow.com/users/3814799/jake"), userDisplayName: "Jake", userType: "registered", userProfileImageURL: NSURL(string: "https://www.gravatar.com/avatar/b1c2b95d26464f8ff8b03d8580df4fcc?s=128&d=identicon&r=PG&f=1"))

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testUserCreation() {
        XCTAssertNotNil(user, "user cannot be created")
    }
    
    func testUserID() {
        XCTAssertNotNil(user.userID, "user's id cannot be created")
    }

    func testUserLink() {
        XCTAssertNotNil(user.userLink, "user's link cannot be created")
    }

    func testUserDisplayName() {
        XCTAssertNotNil(user.userDisplayName, "user's display name cannot be created")
    }

    func testUserType() {
        XCTAssertNotNil(user.userType, "user's type cannot be created")
    }

    func testUserProfileImageURL() {
        XCTAssertNotNil(user.userProfileImageURL, "user's profile image URL cannot be created")
    }
    
}
