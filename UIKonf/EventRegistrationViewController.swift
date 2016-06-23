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

        headerView?.configure(withTitle: event.name, image: event.imageResource)
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        scrollView.isHidden = true
        
        registrationCompletedView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(registrationCompletedView)
        registrationCompletedView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        registrationCompletedView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        registrationCompletedView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
