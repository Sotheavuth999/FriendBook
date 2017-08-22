//
//  FriendDetailsViewController.swift
//  FriendBook
//
//  Created by Sotheavuth Nguon on 8/22/17.
//  Copyright © 2017 Sotheavuth Nguon. All rights reserved.
//

import UIKit

class FriendDetailsViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthDayLabel: UILabel!
    
    var name = ""
    var birthday = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = "\(self.name)'s Birthday is"
        self.birthDayLabel.text = self.birthday
        
    }

}
