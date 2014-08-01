//
//  WebViewViewController.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/31/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class WebViewViewController: UIViewController, UIWebViewDelegate, UINavigationControllerDelegate {

    var question : Question!
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url : NSURL = NSURL(string: question.questionLink!)
        let request : NSURLRequest = NSURLRequest(URL: url)
        webView.loadRequest(request)
        webView.delegate = self
        
        self.navigationItem.title = "Web Link"

    }
    
    func webViewDidStartLoad(webView: UIWebView!) {
        activityIndicator.hidden = false
        activityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView!) {
        activityIndicator.hidden = true
        activityIndicator.stopAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
