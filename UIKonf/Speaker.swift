//
//  Speaker.swift
//  UIKonf
//
//  Created by Bernhard Loibl on 08/05/16.
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import Foundation
import Rswift

public struct Speaker {
    let id: Int
    let name: String
    let shortBio: String
    let imageResource: ImageResource
}

extension Speaker {
    
    static let allSpeakers = [
        Speaker(
            id: 1,
            name: "Andreas Schranzhofer",
            shortBio: "Andreas is CTO at Scalable Capital.",
            imageResource: R.image.andreas
        ),
        Speaker(
            id: 2,
            name: "Ashley Nelson-Hornstein",
            shortBio: "Ashley is an iOS engineer, speaker, and avid blogger.",
            imageResource: R.image.ashley
        ),
        Speaker(
            id: 3,
            name: "Charles Perry",
            shortBio: "Charles Perry is the owner of Metakite Software and co-host of Release Notes podcast.",
            imageResource: R.image.charles
        ),
        Speaker(
            id: 4,
            name: "Clay Smith",
            shortBio: "Clay Smith is a Developer Advocate at New Relic in San Francisco.",
            imageResource: R.image.clay
        ),
        Speaker(
            id: 5,
            name: "Daniel H Steinberg",
            shortBio: "Daniel presents Cocoa and Swift training and consults through Dim Sum Thinking",
            imageResource: R.image.daniel
        ),
        Speaker(
            id: 6,
            name: "Dasmer Singh",
            shortBio: "Speaker & engineer-strategist, passionate about iOS, currently at Venmo.",
            imageResource: R.image.dasmer
        ),
        Speaker(
            id: 7,
            name: "Ellen Shapiro",
            shortBio: "Ellen is the Lead Mobile Developer for SpotHero",
            imageResource: R.image.ellen
        ),
        Speaker(
            id: 8,
            name: "Jaimee Newberry",
            shortBio: "Jaimee is a professional experimenter, UX coach, writer and speaker",
            imageResource: R.image.jaimee
        ),
        Speaker(
            id: 9,
            name: "Jeff Watkins",
            shortBio: "Jeff runs a non-profit supporting organisations to increase diversity in the technology industry.",
            imageResource: R.image.jeff
        ),
        Speaker(
            id: 10,
            name: "Bernhard Loibl & Mathias Nagler",
            shortBio: "iOS developers at the mobile app agency Kupferwerk.",
            imageResource: R.image.bernhardMathias
        ),
        Speaker(
            id: 11,
            name: "Laura Savino",
            shortBio: "Laura is an iOS developer with a passion for human languages, teaching & song.",
            imageResource: R.image.laura
        ),
        Speaker(
            id: 12,
            name: "Michael May",
            shortBio: "iOS developer since the app store launch. Fussy about coffee & easily upset by bad user interfaces.",
            imageResource: R.image.michael
        ),
        Speaker(
            id: 13,
            name: "Shuichi Tsutsumi",
            shortBio: "iOS Freelancer. Author of BTLE Book, iOS Sampler series",
            imageResource: R.image.shuichi
        ),
        Speaker(
            id: 14,
            name: "Stephen Barnes",
            shortBio: "iOS Developer at Fitbit, coffee lover & digital artist",
            imageResource: R.image.stephen
        ),
        Speaker(
            id: 15,
            name: "Steve Scott",
            shortBio: "Scotty is a developer, podcaster and conference organiser with a passion for community.",
            imageResource: R.image.steve
        ),
    ]
}
