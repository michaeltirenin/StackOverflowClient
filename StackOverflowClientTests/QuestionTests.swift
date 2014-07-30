//
//  QuestionTests.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit
import XCTest

class QuestionTests: XCTestCase {
    
    var questionTitle : String = "Int in swift closure not incrementing"
    var questionLink : NSURL = NSURL(string: "http://stackoverflow.com/questions/25001434/int-in-swift-closure-not-incrementing")
    var questionID : Int = 25001434
    var questionCreationDate : String = "07/28/2014, 06:05:04 PM"
    var questionLastEditDate : String = "07/28/2014, 07:36:31 PM"
    var questionLastActivityDate : String = "07/28/2014, 08:31:18 PM"
    var questionIsAnswered : Bool = true
    var questionViewCount : Int = 21
    
    var question = Question(questionTitle: "Int in swift closure not incrementing", questionLink: NSURL(string: "http://stackoverflow.com/questions/25001434/int-in-swift-closure-not-incrementing"), questionID: 25001434, questionCreationDate: "07/28/2014, 06:05:04 PM", questionLastEditDate: "07/28/2014, 07:36:31 PM", questionLastActivityDate: "07/28/2014, 08:31:18 PM", questionIsAnswered: true, questionViewCount: 21)
    
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
    
    func testQuestionCreation() {
        XCTAssertNotNil(question, "question cannot be created")
    }
    
    func testQuestionTitle() {
        XCTAssertNotNil(question.questionTitle, "question's title cannot be created")
    }
    
    func testQuestionLink() {
        XCTAssertNotNil(question.questionLink, "question's link cannot be created")
    }
    
    func testQuestionID() {
        XCTAssertNotNil(question.questionID, "question's id cannot be created")
    }
    
    func testQuestionCreationDate() {
        XCTAssertNotNil(question.questionCreationDate, "question's creation date cannot be created")
    }
    
    func testQuestionLastEditDate() {
        XCTAssertNotNil(question.questionLastEditDate, "question's last edit date cannot be created")
    }
    
    func testQuestionLastActivityDate() {
        XCTAssertNotNil(question.questionLastActivityDate, "question's last acitivity date cannot be created")
    }

    func testQuestionIsAnswered() {
        XCTAssertNotNil(question.questionIsAnswered, "question's is answered cannot be created")
    }

    func testQuestionViewCount() {
        XCTAssertNotNil(question.questionViewCount, "question's view count cannot be created")
    }


}
