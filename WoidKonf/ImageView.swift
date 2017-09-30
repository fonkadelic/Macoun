//
//  ImageView.swift
//  UIKonf
//
//  Created by Mathias Nagler on 10.05.16.
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit

@IBDesignable class ImageView: UIImageView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable var circleShape: Bool = false {
        didSet {
            layer.cornerRadius = bounds.height / 2
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if circleShape {
            layer.cornerRadius = bounds.height / 2
        }
    }
    
}
