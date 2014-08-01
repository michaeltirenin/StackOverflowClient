//
//  ViewController.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate, UISearchDisplayDelegate {
    
    var questions : [Question]?
        
    var searchTerm = ""

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.rowHeight = UITableViewAutomaticDimension
//        self.tableView.estimatedRowHeight = 40 // may not be necessary?
        
        self.navigationItem.title = "Question"
        
        self.searchBar.delegate = self
    }
    
//    override func viewDidAppear(animated: Bool) {
//        super.viewDidAppear(animated)
//        self.tableView.reloadData()
//        self.tableView.dataSource = self
//        self.tableView.rowHeight = UITableViewAutomaticDimension
//    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
        self.tableView.dataSource = self
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar!) {
        
        searchTerm = searchBar.text
        
        let networkController = NetworkController()
        
        networkController.fetchQuestionsForSearchTerm(searchTerm, callback: {(questions: [Question]?, errorDescription: String?) -> Void in
            
            if errorDescription {
                // alert user of error
            } else {
                // put back on main thread
                NSOperationQueue.mainQueue().addOperationWithBlock() {
                    self.questions = questions
                    self.tableView.reloadData()
                    println(questions?.count)
                }
            }
        })
        self.searchBar.resignFirstResponder() //removes keyboard
        self.tableView.reloadData()
    }
    
    // used before search bar added
//    override func viewDidAppear(animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        let networkController = NetworkController()
//        
//        // used for sample data
////        networkController.fetchQuestionsFromSampleData({(questions: [Question]?, errorDescription: String?) -> Void in
//            
//        // used for network fetch via search word
//        //var searchTerm = "swift" // moved this above
//        networkController.fetchQuestionsForSearchTerm(searchTerm, callback: {(questions: [Question]?, errorDescription: String?) -> Void in
//            
//            if errorDescription {
//                // alert user of error
//            } else {
//                // put back on main thread
//                NSOperationQueue.mainQueue().addOperationWithBlock() {
//                    self.questions = questions
//                    self.tableView.reloadData()
//                }
//            }
//        })
//    }
    
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
    // not working for me
//    func tableView(tableView: UITableView!, didDeselectRowAtIndexPath indexPath: NSIndexPath!) {
//        println("did select row")
//        
//        let webview = self.storyboard.instantiateViewControllerWithIdentifier("webview") as WebViewViewController
//        webview.question = questions![tableView!.indexPathForSelectedRow().row]
//
//        if self.navigationController {
//            self.navigationController.pushViewController(webview, animated: true)
//        }
//    }
    // using segue instead ...
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if segue.identifier == "ShowWebview" {
            let webview = segue.destinationViewController as WebViewViewController
            webview.question = questions![tableView!.indexPathForSelectedRow().row]
//          println(tableView!.indexPathForSelectedRow().row)
            }
    }
}

