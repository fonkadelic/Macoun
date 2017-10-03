//
//  SpeakerListViewController.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit
import Reusable
import IBAnimatable

final class SpeakerListViewController: TableViewController<Speaker, BasicTableViewCell> {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        items = Speaker.allSpeakers
        configureCell = { cell, speaker in
            cell.accessoryType = .disclosureIndicator
            cell.configure(withTitle: speaker.name, detail: speaker.shortBio, image: speaker.image)
        }
        willDisplayCell = { cell in
            cell.animate(.none)
        }
        didSelect = { [unowned self] speaker in
            self.perform(segue: StoryboardSegue.Main.showSpeakerDetail, prepare: { segue in
                guard let detail = segue.destination as? SpeakerDetailViewController
                    else { fatalError("Wrong view controller type.") }
                detail.speaker = speaker
            })
        }
    }
}
