//
//  Answer.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import Foundation
import UIKit

class Answer: NSObject {
   
    var answerCount : Int?
    var answerScore : Int?

    init(answerCount : Int, answerScore : Int) {
        self.answerCount = answerCount
        self.answerScore = answerScore
        
    }
}
