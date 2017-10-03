//
//  SpeakerDetailViewControllerTests.swift
//  WoidKonfTests
//
//  Copyright © 2017 Raised by Wolves. All rights reserved.
//

import FBSnapshotTestCase
import XCTest
@testable import WoidKonf

final class SpeakerDetailViewControllerTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        UIView.setAnimationsEnabled(false)
    }

    override func tearDown() {
        UIView.setAnimationsEnabled(true)
        super.tearDown()
    }

    func testThatItLooksRight() {
        let imageStub = UIImage.imageFromColor(.darkGray, size: CGSize(width: 512, height: 512))!
        let speakerStub = Speaker(id: 0, name: "Fixture Name", shortBio: .make(numberOfWords: 10), longBio: .make(numberOfWords: 30), image: imageStub)

        let sut = StoryboardScene.Main.speakerDetailViewController.instantiate()
        sut.speaker = speakerStub

        sut.beginAppearanceTransition(true, animated: false)
        sut.endAppearanceTransition()

        FBSnapshotVerifyView(sut.view)
    }
}

// MARK: Test Helper

fileprivate extension String {
    static func make(numberOfWords: Int = 5) -> String {
        precondition(numberOfWords > 0)

        let wordList = ["Fixture", "Lorem", "ipsum", "dolor", "sit", "amet", "consetetur", "sadipscing", "elitr", "sed", "diam", "nonumy", "eirmod", "tempor", "invidunt", "ut", "labore", "et", "dolore", "magna", "aliquyam", "erat", "sed", "diam", "voluptua", "At", "vero", "eos", "et", "accusam", "Sed", "unum", "minim", "veniam", "ad", "Eu", "dico", "justo", "nemore", "quo", "viris", "nusquam", "vel", "ad", "Graece", "laoreet", "apeirian", "an", "duo", "ullum", "electram", "eu", "pro", "in", "pri", "illum", "instructior"]

        return wordList
            .prefix(numberOfWords)
            .reduce("") { $0 + " " + String($1) }
    }
}

fileprivate extension UIImage {
    static func imageFromColor(_ color: UIColor, size: CGSize) -> UIImage? {
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContext(rect.size)

        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}
