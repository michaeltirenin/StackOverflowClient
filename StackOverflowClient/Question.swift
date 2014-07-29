//
//  Question.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//
// api.stackexchange.com/docs

import UIKit

class Question: NSObject {
    
    var questionTitle : String?
    var questionLink : NSURL?
    var questionID : Double?
    var questionCreationDate : String? // will convert to NSDate when necessary
    var questionLastEditDate : String? // will convert to NSDate when necessary
    var questionLastActivityDate : String? // will convert to NSDate when necessary
    var questionIsAnswered : Bool?
    var questionViewCount : Double?
    
    init(questionTitle : String, questionLink : NSURL, questionID : Double, questionCreationDate : String, questionLastEditDate : String, questionLastActivityDate : String, questionIsAnswered : Bool, questionViewCount : Double) {
        self.questionTitle = questionTitle
        self.questionLink = questionLink
        self.questionID = questionID
        self.questionCreationDate = questionCreationDate
        self.questionLastEditDate = questionLastEditDate
        self.questionLastActivityDate = questionLastActivityDate
        self.questionIsAnswered = questionIsAnswered
        self.questionViewCount = questionViewCount
        
    }
}
