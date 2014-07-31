//
//  ViewController.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource {
    
    var questions : [Question]?

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 80 // may not be necessary?
        
        self.navigationItem.title = "Question Titles"
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let networkController = NetworkController()
        
        // used for sample data
//        networkController.fetchQuestionsFromSampleData({(questions: [Question]?, errorDescription: String?) -> Void in
            
        // used for network fetch via search word
        var searchTerm = "swift"
        networkController.fetchQuestionsForSearchTerm(searchTerm, callback: {(questions: [Question]?, errorDescription: String?) -> Void in
            
            if errorDescription {
                // alert user of error
            } else {
                // put back on main thread
                NSOperationQueue.mainQueue().addOperationWithBlock() {
                    self.questions = questions
                    self.tableView.reloadData()
                }
            }
        })
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        
        if self.questions {
            return self.questions!.count
        } else {
            return 0
        }
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("QuestionCell", forIndexPath: indexPath) as QuestionCell
        
        let question = self.questions![indexPath.row] as Question
        cell.textView.scrollEnabled = false
        cell.textView.text = question.title
                
        return cell
    }
}

