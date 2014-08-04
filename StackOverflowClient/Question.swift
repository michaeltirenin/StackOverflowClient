//
//  Question.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//
// api.stackexchange.com/docs

import Foundation

class Question {
    
    var title : String?
    var questionID : Int?
    var tags : [String]?
    var answer_count : Int?
    var view_count : Int?
    var displayName : String?
    var userID : Int?
    var last_edit_date : NSDate?
    var questionLink : String?
    
    init(itemDict : NSDictionary) {
        
        self.title = itemDict["title"] as? String
//        self.title = itemDict.objectForKey("title") as? String // can also be written this way
        self.questionID = itemDict["question_id"] as? Int
        self.answer_count = itemDict["answer_count"] as? Int
        self.view_count = itemDict["view_count"] as? Int
        self.displayName = itemDict["display_name"] as? String
        self.userID = itemDict["user_id"] as? Int
        self.tags = itemDict["tags"] as? [String]
        if let lastEditDateEpoch = itemDict["last_edit_date"] as? Double {
            self.last_edit_date = NSDate(timeIntervalSince1970: lastEditDateEpoch)
        }
        self.questionLink = itemDict["link"] as? String
    }    
}
