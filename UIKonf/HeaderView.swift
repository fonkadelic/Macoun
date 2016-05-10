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
        view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        view.backgroundColor = backgroundColor
        
        for constraint in constraints {
            var firstItem = constraint.firstItem
            if firstItem === self {
                firstItem = view
            }
            
            var secondItem = constraint.secondItem
            if secondItem === self {
                secondItem = view
            }
            
            view.addConstraint(NSLayoutConstraint(
                item: firstItem,
                attribute: constraint.firstAttribute,
                relatedBy: constraint.relation,
                toItem: secondItem,
                attribute: constraint.secondAttribute,
                multiplier: constraint.multiplier,
                constant: constraint.constant))
        }
        
        return view
    }
}

class HeaderView: UIView, NibLoadable {
    
    @IBOutlet var pictureView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    
    override func awakeAfterUsingCoder(aDecoder: NSCoder) -> AnyObject? {
        if subviews.count > 0 {
            return super.awakeAfterUsingCoder(aDecoder)
        }
        
        return loadReferenceFromNib()
    }
}
