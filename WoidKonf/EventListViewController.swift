//
//  EventListViewController.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit
import IBAnimatable
import Reusable

final class EventListViewController: TableViewController<Event, BasicTableViewCell> {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        items = Event.allEvents
        configureCell = { cell, event in
            cell.configure(withTitle: event.name, detail: event.description, image: event.image)
        }
        willDisplayCell = { cell in
            cell.animate(.none)
        }
        didSelect = { [unowned self] event in
            self.perform(segue: StoryboardSegue.Main.showEventRegistration, prepare: { segue in
                guard let detail = segue.destination as? EventRegistrationViewController
                    else { fatalError("Wrong view controller type.") }
                detail.event = event
            })
        }
    }
}
