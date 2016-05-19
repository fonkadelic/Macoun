//
//  EventRegistrationViewController.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit

class EventRegistrationViewController: UIViewController {
    
    var event: Event!
    @IBOutlet var headerView: HeaderView?
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var registrationCompletedView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        headerView?.configure(withTitle: event.name, imageResource: event.imageResource)
    }
    
    @IBAction func registerButtonTapped(sender: UIButton) {
        scrollView.hidden = true
        
        registrationCompletedView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(registrationCompletedView)
        registrationCompletedView.leadingAnchor.constraintEqualToAnchor(view.leadingAnchor).active = true
        registrationCompletedView.trailingAnchor.constraintEqualToAnchor(view.trailingAnchor).active = true
        registrationCompletedView.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor).active = true
    }
}
