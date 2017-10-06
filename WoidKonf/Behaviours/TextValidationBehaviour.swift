//
//  TextValidationBehaviour.swift
//  WoidKonf
//
//  Copyright © 2017 Raised by Wolves. All rights reserved.
//

import UIKit

@objc protocol TextValidationRule {
    func evaluate(with string: String) -> Bool
}

final class TextLengthRule: NSObject, TextValidationRule {
    @IBInspectable var minCharacterCount: Int = 0
    @IBInspectable var maxCharacterCount: Int = 255

    func evaluate(with string: String) -> Bool {
        let range = minCharacterCount...maxCharacterCount
        return range.contains(string.count)
    }
}

class TextValidationBehaviour: Behaviour {
    @IBOutlet var rules: [TextValidationRule]!
    @IBOutlet var controls: [UIControl]! {
        didSet {
            updateValidation()
        }
    }

    @IBOutlet weak var textField: UITextField? {
        didSet {
            guard let textField = textField else { return }
            textField.addTarget(self, action: #selector(updateValidation), for: .editingChanged)
            updateValidation()
        }
    }

    func validateText() -> Bool {
        let text = textField?.text ?? ""
        return !rules.contains { !$0.evaluate(with: text) }
    }

    @objc private func updateValidation() {
        let isValid = validateText()
        controls?.forEach { $0.isEnabled = isValid }

        sendActions(for: .valueChanged)
    }
}
