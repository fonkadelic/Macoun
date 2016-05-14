//
//  EventRegistrationViewController.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit

class EventRegistrationViewController: UIViewController {
    
    var event: Event!
    @IBOutlet var headerView: HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.configure(withTitle: event.name, imageResource: event.imageResource)
    }
}
