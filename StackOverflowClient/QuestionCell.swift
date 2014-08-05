//
//  QuestionCell.swift
//  StackOverflowClient
//
//  Created by Michael Tirenin on 7/30/14.
//  Copyright (c) 2014 Michael Tirenin. All rights reserved.
//

import UIKit

class QuestionCell: UITableViewCell {

    @IBOutlet weak var textView: UITextView!
    
//    override init(style: UITableViewCellStyle, reuseIdentifier: String) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        // Initialization code
//    }

// added for Xcode6-Beta5 - second "required init" worked (below)
//http://stackoverflow.com/questions/25126295/swift-class-does-not-implement-its-superclasss-required-members
//    required init(coder: NSCoder) {
//        fatalError("NSCoding not supported")
//    }
// or remove entirely
//    required init(coder aDecoder: NSCoder!) {
//        super.init(coder: aDecoder)
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
