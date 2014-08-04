//
//  Info.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 8/3/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import Foundation

class Info {

    var newActiveUsers : Int?
    var totalUsers : Int?
    var totalComments : Int?
    var totalQuestions : Int?
    var questionsPerMinute : Double?
    var totalAnswers : Int?
    var answersPerMinute : Double?
    var totalAccepted : Int?
    var totalUnanswered : Int?

    init(itemDict : NSDictionary) {
        
        self.newActiveUsers = itemDict["new_active_users"] as? Int
        self.totalUsers = itemDict["total_users"] as? Int
        self.totalComments = itemDict["total_comments"] as? Int
        self.totalQuestions = itemDict["total_questions"] as? Int
        self.questionsPerMinute = itemDict["questions_per_minute"] as? Double
        self.totalAnswers = itemDict["total_answers"] as? Int
        self.answersPerMinute = itemDict["answers_per_minute"] as? Double
        self.totalAccepted = itemDict["total_accepted"] as? Int
        self.totalUnanswered = itemDict["total_unanswered"] as? Int
    }
}

/*
new_active_users
total_users
total_comments
total_questions
questions_per_minute
total_answers
answers_per_minute
total_accepted
total_unanswered
*/
