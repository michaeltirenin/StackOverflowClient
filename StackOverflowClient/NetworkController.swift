//
//  NetworkController.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/29/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import Foundation

class NetworkController {
    
    let apiDomain = "http://api.stackexchange.com/2.2"
    let searchEndpoint = "/search?order=desc&sort=activity&tagged=swift&site=stackoverflow"
    
    func parseSuccessfulResponse(responseData: NSData) -> [Question] {
        
        var questions = [Question]()
        
        if let responseDict = NSJSONSerialization.JSONObjectWithData(responseData, options: nil, error: nil) as? NSDictionary {
            
            if let items = responseDict["items"] as? NSArray {
                
                for item in items {
                    
                    if let itemDict = item as? NSDictionary {
                        
                        let question = Question(itemDict: itemDict)
                        questions += question
                        //println(question)
                    }
                }
            }
        }
        return questions
    }
    
    //use callback
    func fetchQuestionsFromSampleData(callback: (questions: [Question]?, errorDescription: String?) -> Void) {
        
        let sampleData = NSData(contentsOfFile: NSBundle.mainBundle().pathForResource("SampleResponse", ofType: "json"))
        var questions = self.parseSuccessfulResponse(sampleData)
        callback(questions: questions, errorDescription: nil)
    }
    
//    func fetchQuestionsForSearchTerm(searchTerm : String, callback: (questions: [Question]?, errorDescription: String?) -> Void) {
//        // set up URL
//        var url = NSURL(string: apiDomain + searchEndpoint + "&tagged=\(searchTerm)")
//        // set up NSURLSession
//        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
//        // set up task (data ask for JSON fetch)
//        let task = session.dataTaskWithURL(url, completionHandler: {(data: NSData!, response: NSURLResponse!, error: NSError!) -> Void in
//            
//            if error {
//                //general error - tell the user try again later or check if they have connection
//                //execute callback, passing an error and no questions
//                callback(questions: nil, errorDescription: "Error. Try again.") // 2 paths - if it works, questions will be reloaded, if not, error message
//                return // not necessary?
//                
//            } else {
//                //you know your request, so now you want to dig into the response object
//                if let httpResponse = response as? NSHTTPURLResponse {
//                    
//                    switch httpResponse.statusCode {
//                    //create logic for your different http response codes
//                    case 200: println("[Status 200] OK: HTTP request successful")
//                    
//                    self.parseSuccessfulResponse(data)
//                        
//                    case 400: println("[Status 400] Bad: Bad request; check syntax")
//                    callback(questions: nil, errorDescription: "[Status 400] Bad: Bad request; check syntax")
//                        
//                    case 401: println("[Status 401] Unauthorized: Authentication was required but not provided")
//                    callback(questions: nil, errorDescription: "[Status 401] Unauthorized: Authentication was required but not provided")
//                        
//                    case 403: println("[Status 403] Forbidden: Request was valid, but server refuses to respond")
//                    callback(questions: nil, errorDescription: "[Status 403] Forbidden: Request was valid, but server refuses to respond")
//                        
//                    case 404: println("[Status 404] Not found: Requested resource not found")
//                    callback(questions: nil, errorDescription: "[Status 404] Not found: Requested resource not found")
//                        
//                    case 429: println("[Status 429] Too Many Requests: Rate limited")
//                    callback(questions: nil, errorDescription: "[Status 429] Too Many Requests: Rate limited")
//                        
//                    default: println("Sorry. Try again")
//                    callback(questions: nil, errorDescription: "Sorry. Try again")                    }
//                }
//            }
//        })
//        task.resume()
//    }
}