//
//  Event.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import UIKit


public struct Event {
    let id: Int
    let name: String
    let description: String
    let image: UIImage
}

extension Event {
    static let allEvents = [
        Event(
            id: 0,
            name: "Benin",
            description: "Bonum integritas corporis: misera debilitas. Istic sum, inquit.",
            image: #imageLiteral(resourceName: "benin")
        ),
        Event(
            id: 1,
            name: "Erdhoehle",
            description: "Sed fortuna fortis; Quo modo autem philosophus loquitur? Laboro autem non sine.",
            image: #imageLiteral(resourceName: "erdhoehle")
        ),
        Event(
            id: 2,
            name: "Lichtstern",
            description: "De illis, cum volemus. Quodsi ipsam honestatem undique pertectam atque absolutam.",
            image: #imageLiteral(resourceName: "lichtstern")
        ),
        Event(
            id: 3,
            name: "Ruca",
            description: "Nulla erit controversia. Non est igitur voluptas bonum Sed mehercule pergrata mihi.",
            image: #imageLiteral(resourceName: "ruca")
        ),
        Event(
            id: 4,
            name: "Wasserhütte",
            description: "Quantum Aristoxeni ingenium consumptum videmus in musicis? At coluit ipse amicitias.",
            image: #imageLiteral(resourceName: "wasserhuette")
        ),
        Event(
            id: 5,
            name: "Wiesenbett",
            description: "Falli igitur possumus. Neutrum vero, inquit ille. Quis istud possit, inquit, negare.",
            image: #imageLiteral(resourceName: "wiesenbett")
        )
    ]
}
