//
//  FriendListViewController.swift
//  FriendBook
//
//  Created by Sotheavuth Nguon on 8/22/17.
//  Copyright © 2017 Sotheavuth Nguon. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let myFriends = ["Seang Hy", "Sophal", "Tourn Ey", "Sarath"]
    
    var selectedFriend = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return myFriends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = myFriends[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedFriend = myFriends[indexPath.row]
        self.performSegue(withIdentifier: "friendListToFriendDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController = segue.destination as! FriendDetailsViewController
        detailViewController.name = self.selectedFriend
        
        switch selectedFriend {
        case "Seang Hy":
            detailViewController.birthday = "April 21st"
        case "Sophal":
            detailViewController.birthday = "March 11th"
        case "Tourn Ey":
            detailViewController.birthday = "April 7th"
        case "Sarath":
            detailViewController.birthday = "January 7th"
            
        default:
            detailViewController.birthday = ""
        }
    }

}
