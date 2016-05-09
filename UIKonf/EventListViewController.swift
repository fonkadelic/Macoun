//
//  EventListViewController.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit

class EventListViewController: UITableViewController {
    
    let events = Event.allEvents

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.registerNib(UINib(nibName: String(BasicTableViewCell), bundle: nil), forCellReuseIdentifier:String(BasicTableViewCell))
        tableView.rowHeight = 100
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(BasicTableViewCell), forIndexPath: indexPath) as! BasicTableViewCell
        let event = events[indexPath.row]
        cell.configure(withTitle: event.name, detail: event.description, imageName: event.imageName)
        
        return cell
    }
}
