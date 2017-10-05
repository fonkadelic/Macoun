//
//  RoundedImageView.swift
//  WoidKonf
//
//  Created by Mathias Nagler on 05.10.17.
//  Copyright © 2017 Raised by Wolves. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedImageView: UIImageView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set { layer.cornerRadius = newValue }
    }
}
