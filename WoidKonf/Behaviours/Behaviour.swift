//
//  Behaviour.swift
//  WoidKonf
//
//  Copyright © 2017 Raised by Wolves. All rights reserved.
//

import UIKit

class Behaviour: UIControl {
    private struct AssociatedKeys {
        static var owner = "behaviourOwner"
    }

    @IBOutlet weak var owner: AnyObject! {
        willSet {
            guard let oldOwner = owner else { return }
            objc_setAssociatedObject(oldOwner, &AssociatedKeys.owner, nil, .OBJC_ASSOCIATION_RETAIN)
        }
        didSet {
            guard let newOwner = owner else { return }
            objc_setAssociatedObject(newOwner, &AssociatedKeys.owner, self, .OBJC_ASSOCIATION_RETAIN)
        }
    }

    #if DEBUG
    override func awakeFromNib() {
        super.awakeFromNib()

        assert(owner != nil)
    }
    #endif
}
