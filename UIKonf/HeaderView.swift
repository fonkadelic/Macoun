//
//  HeaderView.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit
import Reusable

public extension NibLoadable where Self: UIView {
    
    func loadReferenceFromNib() -> Self {
        let view = self.dynamicType.loadFromNib()
        view.frame = frame
        view.autoresizingMask = autoresizingMask
        view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        view.backgroundColor = backgroundColor
        view.alpha = alpha
        
        for placeholderConstraint in constraints {
            let firstItem = (placeholderConstraint.firstItem === self) ? view : placeholderConstraint.firstItem
            let secondItem = (placeholderConstraint.secondItem === self) ? view : placeholderConstraint.secondItem
            
            let constraint = NSLayoutConstraint(
                item: firstItem,
                attribute: placeholderConstraint.firstAttribute,
                relatedBy: placeholderConstraint.relation,
                toItem: secondItem,
                attribute: placeholderConstraint.secondAttribute,
                multiplier: placeholderConstraint.multiplier,
                constant: placeholderConstraint.constant)
            
            constraint.identifier = placeholderConstraint.identifier
            constraint.shouldBeArchived = placeholderConstraint.shouldBeArchived
            constraint.priority = placeholderConstraint.priority
            constraint.isActive = placeholderConstraint.isActive
            
            view.addConstraint(constraint)
        }
        
        return view
    }
}

class HeaderView: UIView, NibLoadable {
    
    @IBOutlet var pictureView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    override func awakeAfter(using aDecoder: NSCoder) -> AnyObject? {
        if subviews.count > 0 {
            return super.awakeAfter(using: aDecoder)
        }
        
        return loadReferenceFromNib()
    }
    
    func configure(withTitle title: String, image: UIImage) {
        titleLabel.text = title
        pictureView.image = image
    }
}
