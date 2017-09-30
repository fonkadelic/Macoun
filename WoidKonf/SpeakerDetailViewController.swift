//
//  SpeakerDetailViewController.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit

class SpeakerDetailViewController: UIViewController {

    var speaker: Speaker!
    @IBOutlet var headerView: HeaderView!
    @IBOutlet var bioLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        headerView.configure(withTitle: speaker.name, image: speaker.image)
        bioLabel.text = speaker.longBio
    }    
}
