//
//  EventListViewController.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit
import IBAnimatable
import Reusable

class EventListViewController: UITableViewController {
    
    let events = Event.allEvents

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(cellType: BasicTableViewCell.self)
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath) as BasicTableViewCell
        cell.accessoryType = .disclosureIndicator
        let event = events[indexPath.row]
        cell.configure(withTitle: event.name, detail: event.description, image: event.image)
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        perform(segue: StoryboardSegue.Main.showEventRegistration)
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let animatableCell = cell as? AnimatableTableViewCell {
            animatableCell.animate(.none)
        }
    }
    
    // MARK: - Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if case .showEventRegistration = StoryboardSegue.Main(rawValue: segue.identifier!)!,
            let selectedIndexPath = tableView.indexPathForSelectedRow,
            let eventRegistrationViewController = segue.destination as? EventRegistrationViewController {
            eventRegistrationViewController.event = events[selectedIndexPath.row]
        }
    }
}
