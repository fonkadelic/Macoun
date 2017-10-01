//
//  BasicTableViewCell.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit
import IBAnimatable
import Reusable

class BasicTableViewCell: AnimatableTableViewCell, NibReusable {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var pictureView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()

        let selected = UIView()
        selected.backgroundColor = UIColor(named: "selected")?.withAlphaComponent(0.8)
        selectedBackgroundView = selected
    }
    
    func configure(withTitle title: String, detail: String, image: UIImage) {
        titleLabel.text = title
        descriptionLabel.text = detail
        pictureView.image = image
    }
}
