//
//  EventListViewController.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit
import Reusable

final class EventListViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // register nib
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.perform(segue: StoryboardSegue.Main.showEventRegistration, prepare: { segue in
            guard let detail = segue.destination as? EventRegistrationViewController else { fatalError("Wrong view controller type.") }
            let event = Event.allEvents[indexPath.row]
            detail.event = event
        })
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = Event.allEvents[indexPath.row]
        let cell = tableView.dequeueReusableCell(for: indexPath, cellType: BasicTableViewCell.self)
        cell.accessoryType = .disclosureIndicator
        cell.configure(withTitle: item.name, detail: item.description, image: item.image)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Event.allEvents.count
    }
    
    // MARK: - Segues
    
    private var prepareHandlers: [String: (UIStoryboardSegue) -> ()] = [:]
    
    final func perform<S: SegueType>(segue: S, prepare: @escaping (UIStoryboardSegue) -> ()) where S.RawValue == String {
        prepareHandlers[segue.rawValue] = prepare
        performSegue(withIdentifier: segue.rawValue, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier,
            let handler = prepareHandlers.removeValue(forKey: identifier) else { fatalError() }
        
        handler(segue)
    }
}
































//final class EventListViewController: TableViewController<Event, BasicTableViewCell> {
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//
//        items = Event.allEvents
//        configureCell = { cell, event in
//            cell.accessoryType = .disclosureIndicator
//            cell.configure(withTitle: event.name, detail: event.description, image: event.image)
//        }
//        willDisplayCell = { cell in
//            
//        }
//        didSelect = { [unowned self] event in
//            self.perform(segue: StoryboardSegue.Main.showEventRegistration, prepare: { segue in
//                guard let detail = segue.destination as? EventRegistrationViewController
//                    else { fatalError("Wrong view controller type.") }
//                detail.event = event
//            })
//        }
//    }
//}

