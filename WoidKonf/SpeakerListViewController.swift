//
//  SpeakerListViewController.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit
import Reusable

final class SpeakerListViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // register nib
    }

    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.perform(segue: StoryboardSegue.Main.showSpeakerDetail, prepare: { segue in
            guard let detail = segue.destination as? SpeakerDetailViewController else { fatalError("Wrong view controller type.") }
            let speaker = Speaker.allSpeakers[indexPath.row]
            detail.speaker = speaker
        })
    }
    
    // MARK: - UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = Speaker.allSpeakers[indexPath.row]
        let cell = tableView.dequeueReusableCell(for: indexPath, cellType: BasicTableViewCell.self)
        cell.accessoryType = .disclosureIndicator
        cell.configure(withTitle: item.name, detail: item.shortBio, image: item.image)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Speaker.allSpeakers.count
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































//final class SpeakerListViewController: TableViewController<Speaker, BasicTableViewCell> {
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//
//        items = Speaker.allSpeakers
//        configureCell = { cell, speaker in
//            cell.accessoryType = .disclosureIndicator
//            cell.configure(withTitle: speaker.name, detail: speaker.shortBio, image: speaker.image)
//        }
//        willDisplayCell = { cell in
//
//        }
//        didSelect = { [unowned self] speaker in
//            self.perform(segue: StoryboardSegue.Main.showSpeakerDetail, prepare: { segue in
//                guard let detail = segue.destination as? SpeakerDetailViewController
//                    else { fatalError("Wrong view controller type.") }
//                detail.speaker = speaker
//            })
//        }
//    }
//}

