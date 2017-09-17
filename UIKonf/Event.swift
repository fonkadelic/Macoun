//
//  Event.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import Foundation


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
            name: "Bike Tour",
            description: "UIKonf bike tour has become a tradition. The tour of 2016 will continue that tradition.",
            image: #imageLiteral(resourceName: "bike-tour")
        ),
        Event(
            id: 1,
            name: "A Boat Tour on the Spree",
            description: "Relax, enjoy Berlin from a boat and chat with other UIKonf participants.",
            image: #imageLiteral(resourceName: "boat-tour")
        ),
        Event(
            id: 2,
            name: "Brewery Tour",
            description: "Follow a German tradition and learn how to brew beer at the Brewery Tour.",
            image: #imageLiteral(resourceName: "brewery-tour")
        ),
        Event(
            id: 3,
            name: "WWII Bomb-Shelter Tour",
            description: "A guided tour of a WWII bomb shelter",
            image: #imageLiteral(resourceName: "shelter-tour")
        ),
        Event(
            id: 4,
            name: "Stasi Museum Tour",
            description: "Visit the former GDR state security head office which has been conserved in time.",
            image: #imageLiteral(resourceName: "stasi-tour")
        ),
        Event(
            id: 5,
            name: "Tempelhof Airport Tour",
            description: "Ever wondered how Tempelhof airport looks from the inside? Then join this tour.",
            image: #imageLiteral(resourceName: "airport-tour")
        ),
    ]
}
