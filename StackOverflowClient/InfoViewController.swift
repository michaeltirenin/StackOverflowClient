//
//  InfoViewController.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 8/3/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    var info : Info?
    
    var networkController : NetworkController!
    
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
        
        var appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        self.networkController = appDelegate.networkController
        
        self.navigationItem.title = "Info"
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.networkController.fetchInfo({(info: Info?, errorDescription: String?) -> Void in
            
            self.info = info
            
            NSOperationQueue.mainQueue().addOperationWithBlock({() -> Void in
                self.newActiveUsersLabel.text = "\(self.info!.newActiveUsers!)"
                self.totalUsersLabel.text = "\(self.info!.totalUsers!)"
                self.totalCommentsLabel.text = "\(self.info!.totalComments!)"
                self.totalQuestionsLabel.text = "\(self.info!.totalQuestions!)"
                self.questionsPerMinuteLabel.text = "\(self.info!.questionsPerMinute!)"
                self.totalAnswersLabel.text = "\(self.info!.totalAnswers!)"
                self.answersPerMinuteLabel.text = "\(self.info!.answersPerMinute!)"
                self.totalAcceptedLabel.text = "\(self.info!.totalAccepted!)"
                self.totalUnansweredLabel.text = "\(self.info!.totalUnanswered!)"
                })
            })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
