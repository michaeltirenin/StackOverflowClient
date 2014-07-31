//
//  Answer.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import Foundation

class Answer {
   
    var answerCount : Int?
    var answerScore : Int?

    init(itemDict: NSDictionary) {

        self.answerCount = itemDict["answer_count"] as? Int
        self.answerScore = itemDict["score"] as? Int
        
    }
}
