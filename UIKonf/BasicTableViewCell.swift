//
//  BasicTableViewCell.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit
import IBAnimatable
import Rswift

class BasicTableViewCell: AnimatableTableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var pictureView: UIImageView!
    
    func configure(withTitle title: String, detail: String, imageResource: ImageResource) {
        titleLabel.text = title
        descriptionLabel.text = detail
        pictureView.image = UIImage(resource: imageResource)
    }
}
