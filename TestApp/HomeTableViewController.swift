//
//  HomeTableViewController.swift
//  TestApp
//
//  Created by Sandeep Kumar on 09/02/15.
//  Copyright (c) 2015 Appirio. All rights reserved.
//

import Foundation
import UiKit

class HomeTableViewController: UITableViewController {
    
    
    var dataArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataArray = ["TopCoder","SFDC","WorkDay","CSOD"]
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel?.text = dataArray[indexPath.row]
        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailCont:detailViewController = segue.destinationViewController as detailViewController
        
        
        detailCont.detailMessage.text = "Welcome"
    }
    
}