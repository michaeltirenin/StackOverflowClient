//
//  InfoViewController.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 8/3/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    var info : [Info]?
    
    @IBOutlet weak var newActiveUsersLabel: UILabel!
    @IBOutlet weak var totalUsersLabel: UILabel!
    @IBOutlet weak var totalCommentsLabel: UILabel!
    @IBOutlet weak var totalQuestionsLabel: UILabel!
    @IBOutlet weak var questionsPerMinuteLabel: UILabel!
    @IBOutlet weak var totalAnswersLabel: UILabel!
    @IBOutlet weak var answersPerMinuteLabel: UILabel!
    @IBOutlet weak var totalAcceptedLabel: UILabel!
    @IBOutlet weak var totalUnansweredLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.newActiveUsersLabel.text = info.newActiveUsers
//        self.totalUsersLabel.text = info.totalUsers
//        self.totalCommentsLabel.text = info.totalComments
//        self.totalQuestionsLabel.text = info.totalQuestions
//        self.questionsPerMinuteLabel = info.questionsPerMinute
//        self.totalAnswersLabel = info.totalAnswers
//        self.answersPerMinuteLabel = info.answersPerMinute
//        self.totalAcceptedLabel = info.totalAccepted
//        self.totalUnansweredLabel = info.totalUnanswered
        
        self.navigationItem.title = "Info"
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
