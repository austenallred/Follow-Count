//
//  FollowTableViewController.swift
//  Follow Count
//
//  Created by Austen Allred on 1/24/15.
//  Copyright (c) 2015 Austen Allred. All rights reserved.
//

import UIKit

class FollowTableViewController: UITableViewController {
    
    let usernames = ["austenallred","grasswire"]
    let followNumber = ["35000","109000"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usernames.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell
        let usernameLabel = cell.viewWithTag(1) as UILabel
        let followerLabel = cell.viewWithTag(2) as UILabel
        
        
        if indexPath.row == 0 { usernameLabel.text = usernames[0]
                                followerLabel.text = followNumber[0]}
        else if indexPath.row == 1 { usernameLabel.text = usernames[1]
                                followerLabel.text = followNumber[1]}
        else {usernameLabel.text = usernames[2]
                                followerLabel.text = followNumber[2]}
        return cell
    }


}
