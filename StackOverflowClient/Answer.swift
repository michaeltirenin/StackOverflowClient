//
//  Answer.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class Answer: NSObject {
   
    var answerCount : Double?
    var answerScore : Double?

    init(answerCount : Double, answerScore : Double) {
        self.answerCount = answerCount
        self.answerScore = answerScore
        
    }
}
