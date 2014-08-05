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
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        // Initialization code
    }

//    required init(coder: NSCoder) {
//        fatalError("NSCoding not supported")
//    }
    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
