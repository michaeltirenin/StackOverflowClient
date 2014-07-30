//
//  Question.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//
// api.stackexchange.com/docs

import Foundation
import UIKit

class Question: NSObject {
    
//    var questionTitle : String?
//    var questionLink : NSURL?
    var questionID : Int?
//    var questionCreationDate : String? // will convert to NSDate when necessary
//    var questionLastEditDate : String? // will convert to NSDate when necessary
//    var questionLastActivityDate : String? // will convert to NSDate when necessary
//    var questionIsAnswered : Bool?
//    var questionViewCount : Int?
    
//    init(questionTitle : String, questionLink : NSURL, questionID : Int, questionCreationDate : String, questionLastEditDate : String, questionLastActivityDate : String, questionIsAnswered : Bool, questionViewCount : Int) {
    init(questionID : Int) {
        self.questionID = questionID
//        self.questionLink = questionLink
//        self.questionID = questionID
//        self.questionCreationDate = questionCreationDate
//        self.questionLastEditDate = questionLastEditDate
//        self.questionLastActivityDate = questionLastActivityDate
//        self.questionIsAnswered = questionIsAnswered
//        self.questionViewCount = questionViewCount
    }
    
    class func questionsFromJSON(allQuestionResults: NSArray) -> [Question] {
        
        var questions = [Question]()
        
        if allQuestionResults.count > 0 {
            
            for result in allQuestionResults {
                
                let question_id = result.objectForKey("question_id") as? Int
                
                println(question_id)
            }
            // append
        }
        return questions
    }
}
