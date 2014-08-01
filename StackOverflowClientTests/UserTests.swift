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
    
//    var user = User(itemDict: NSDictionary)
//    
//    var userID : Int = 155417,
//    var userLink : NSURL = String("http:\/\/stackoverflow.com\/users\/155417\/chalkers")
//    var userDisplayName : String = "Chalkers"
//    var userType : String = "registered"
//    var userProfileImageURL : NSURL = String("https:\/\/www.gravatar.com\/avatar\/0333c8c993f63d263c9bc59ad2c35a9b?s=128&d=identicon&r=PG")
    
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
    
//    func testUserCreation() {
//        XCTAssertNotNil(user, "user cannot be created")
//    }
//    
//    func testUserID() {
//        XCTAssertNotNil(user.userID, "user's id cannot be created")
//    }
//
//    func testUserLink() {
//        XCTAssertNotNil(user.userLink, "user's link cannot be created")
//    }
//
//    func testUserDisplayName() {
//        XCTAssertNotNil(user.userDisplayName, "user's display name cannot be created")
//    }
//
//    func testUserType() {
//        XCTAssertNotNil(user.userType, "user's type cannot be created")
//    }
//
//    func testUserProfileImageURL() {
//        XCTAssertNotNil(user.userProfileImageURL, "user's profile image URL cannot be created")
//    }
}