//
//  SpeakerListViewController.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit
import Reusable
import IBAnimatable

class SpeakerListViewController: UITableViewController {
    
    fileprivate let speakers = Speaker.allSpeakers
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(cellType: BasicTableViewCell.self)
    }

    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return speakers.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as BasicTableViewCell
        cell.accessoryType = .disclosureIndicator

        let speaker = speakers[indexPath.row]
        cell.configure(withTitle: speaker.name, detail: speaker.shortBio, image: speaker.image)
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        perform(segue: StoryboardSegue.Main.showSpeakerDetail)
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let animatableCell = cell as? AnimatableTableViewCell {
            animatableCell.animate(.none)
        }
    }
    
    // MARK: - Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if case .showSpeakerDetail = StoryboardSegue.Main(rawValue: segue.identifier!)!,
            let selectedIndexPath = tableView.indexPathForSelectedRow,
            let speakerDetailViewController = segue.destination as? SpeakerDetailViewController {
            speakerDetailViewController.speaker = speakers[selectedIndexPath.row]
        }
    }
}
