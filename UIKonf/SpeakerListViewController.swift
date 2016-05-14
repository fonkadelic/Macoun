//
//  SpeakerListViewController.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit
import IBAnimatable

class SpeakerListViewController: UITableViewController {
    
    private let speakers = Speaker.allSpeakers
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.registerNib(UINib(nibName: String(BasicTableViewCell), bundle: nil), forCellReuseIdentifier:String(BasicTableViewCell))
        tableView.rowHeight = 100
    }
    
    
    // MARK: - UITableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return speakers.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(BasicTableViewCell), forIndexPath: indexPath) as! BasicTableViewCell
        let speaker = speakers[indexPath.row]
        cell.configure(withTitle: speaker.name, detail: speaker.shortBio, imageResource: speaker.imageResource)
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        if let animatableCell = cell as? AnimatableTableViewCell {
            animatableCell.animate()
        }
    }
}
