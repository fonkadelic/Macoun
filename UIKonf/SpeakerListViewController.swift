//
//  SpeakerListViewController.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit
import IBAnimatable
import Reusable

class SpeakerListViewController: UITableViewController {
    
    private let speakers = Speaker.allSpeakers
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.registerReusableCell(BasicTableViewCell)
        tableView.rowHeight = 100
    }
    
    
    // MARK: - UITableViewDataSource
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return speakers.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(indexPath: indexPath) as BasicTableViewCell
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
