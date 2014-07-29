//
//  NetworkController.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/29/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

//http://api.stackexchange.com/docs/search

//create a method that successfully sends a request to stack overflow's Search endpoint (http://api.stackexchange.com/docs/search)  and attempt to parse through the response. You must use NSURLSession for this.


import Foundation
import UIKit

class NetworkController : NSObject, NSURLSessionDownloadDelegate /*implement 3 required methods*/ {
    
    func fetchData(searchTerm : String) {
        // set up NSURLRequest
        var demoSearch = "iOS"
        let request = NSURLRequest(URL: NSURL(string: "http://api.stackexchange.com//2.2/search?order=desc&sort=activity&tagged=swift&site=stackoverflow"))
        // set up NSURLSession
        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        // set up task (data ask for JSON fetch)
        let repoDataTask = session.dataTaskWithRequest(request, completionHandler: {(data: NSData!, response: NSURLResponse!, error: NSError!) -> Void in
            
            if error {
                //general error - tell the user try again later or check if they have connection
                println("You are no longer connected to the internet. Please try again later.")
                
            } else {
                //you know your request, so now you want to dig into the response object
                if let httpResponse = response as? NSHTTPURLResponse {
                    switch httpResponse.statusCode {
                        //work with the data - NSJSONSerialization
                        //create logic for your different http response codes
                    case 200: println("OK: HTTP request successful")
                    case 400: println("Bad: Bad request; check syntax")
                    case 401: println("Unauthorized: Authentication was required but not provided")
                    case 403: println("Forbidden: Request was valid, but server refuses to respond")
                    case 404: println("Not found: Requested resource not found")
                    case 429: println("Too Many Requests: Rate limited")
                    default: println("Server error")
                        //warn user of error
                    }
                }
            }
        })
        repoDataTask.resume()
    }
    
    func URLSession(session: NSURLSession!, downloadTask: NSURLSessionDownloadTask!, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
    
        let percentDownloaded = Double(Double(totalBytesWritten) / Double(totalBytesExpectedToWrite))
    
        println("Downloaded \(percentDownloaded * 100.0)%")
    }
    
    func URLSession(session: NSURLSession!, downloadTask: NSURLSessionDownloadTask!, didResumeAtOffset fileOffset: Int64, expectedTotalBytes: Int64) {
        
        println("did resume downloading")
    }
    
    func URLSession(session: NSURLSession!, downloadTask: NSURLSessionDownloadTask!, didFinishDownloadingToURL location: NSURL!) {
        
        println("did finish downloading at \(location.description)")
    }
}