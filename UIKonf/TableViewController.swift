//
//  TableViewController.swift
//  UIKonf
//
//  Copyright © 2017 Raised by Wolves. All rights reserved.
//

import UIKit
import Reusable

class TableViewController<Item, Cell: NibReusable>: UITableViewController {

    var items: [Item] = [] {
        didSet {
            guard isViewLoaded else { return }
            tableView.reloadData()
        }
    }

    var configureCell: ((Cell, Item) -> ())?
    var didSelect: ((Item) -> ())?
    var willDisplayCell: ((Cell) -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(Cell.nib, forCellReuseIdentifier: Cell.reuseIdentifier)
    }

    // MARK: - UITableViewDataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.reuseIdentifier, for: indexPath) as! Cell
        configureCell?(cell, items[indexPath.row])

        return cell as! UITableViewCell
    }

    // MARK: - UITableViewDelegate

    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        willDisplayCell?(cell as! Cell)
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        didSelect?(items[indexPath.row])
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
