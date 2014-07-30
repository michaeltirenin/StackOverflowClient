//
//  ViewController.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/28/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let networkController = NetworkController()
        
    @IBAction func getDataButton(sender: UIButton) {
        self.networkController.fetchData("dummyString")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

