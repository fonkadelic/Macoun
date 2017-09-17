//
//  Speaker.swift
//  UIKonf
//
//  Copyright © 2016 Raised by Wolves. All rights reserved.
//

import Foundation

public struct Speaker {
    let id: Int
    let name: String
    let shortBio: String
    let longBio: String
    let image: UIImage
}

extension Speaker {
    
    static let allSpeakers = [
        Speaker(
            id: 1,
            name: "Andreas Schranzhofer",
            shortBio: "Andreas is CTO at Scalable Capital.",
            longBio: "For the last 5 years, Andreas worked on Mobile Platforms for banking and eCommerce. As Head of Mobile Engineering, he build the GetYourGuide Mobile App and Engineering Team in Zurich and Berlin. With Avaloq AG in Zurich, he build the Avaloq Front Platform for Mobile and Webbanking. At his current position as CTO with Scalable Capital, he is responsible for all engineering efforts and takes personal pride in contributing code for the backend, the frontend and the mobile apps. Andreas studied Computer Science at Graz, University of Technology and holds a PhD Degree in Embedded Realtime Systems from ETH Zürich, Switzerland.",
            image: #imageLiteral(resourceName: "andreas")
        ),
        Speaker(
            id: 2,
            name: "Ashley Nelson-Hornstein",
            shortBio: "Ashley is an iOS engineer, speaker, and avid blogger.",
            longBio: "Ashley Nelson-Hornstein is an iOS engineer, speaker, and avid blogger. Most recently she was at Dropbox, where she worked on problems at scale and advocated for accessibility. These days, Ashley’s exploring what it means to build impactful products.",
            image: #imageLiteral(resourceName: "ashley")
        ),
        Speaker(
            id: 3,
            name: "Charles Perry",
            shortBio: "Charles Perry is the owner of Metakite Software and co-host of Release Notes podcast.",
            longBio: "Charles Perry is the owner of Metakite Software which specializes in building iOS apps for productive people. He also co-hosts Release Notes, a weekly podcast about the business of Mac and iOS indie software development. When Charles isn't writing software, you'll probably find him making a mess in the kitchen as he cooks, bakes, or brews.",
            image: #imageLiteral(resourceName: "charles")
        ),
        Speaker(
            id: 4,
            name: "Clay Smith",
            shortBio: "Clay Smith is a Developer Advocate at New Relic in San Francisco.",
            longBio: "Clay is a Developer Advocate at New Relic in San Francisco. He previously has worked at San Francisco Bay Area software companies as a senior software engineer, including founding the mobile engineering team at a PagerDuty and creating one of the first iOS apps written in Swift. He has spoken about mobile and web application development at O’Reilly Fluent, JSConfUY, Twilio SignalConf and Node.js Interactive.",
            image: #imageLiteral(resourceName: "clay")
        ),
        Speaker(
            id: 5,
            name: "Daniel H Steinberg",
            shortBio: "Daniel presents Cocoa and Swift training and consults through Dim Sum Thinking",
            longBio: "Daniel is the author of the best selling books A Swift Kickstart and Developing iOS 7 Apps for iPad and iPhone (the official companion book to the popular iTunes U series from Stanford University).\n He has written apps for the iPhone and the iPad since the SDKs first appeared and has written programs for the Mac all the way back to System 7.\nDaniel presents iPhone, Cocoa, and Swift training and consults through his company Dim Sum Thinking.",
            image: #imageLiteral(resourceName: "daniel")
        ),
        Speaker(
            id: 6,
            name: "Dasmer Singh",
            shortBio: "Speaker & engineer-strategist, passionate about iOS, currently at Venmo.",
            longBio: "Dasmer studied Financial Engineering at Columbia University. He’s a frozen yogurt aficionado who loves running, basketball, and building great products. His goal at Venmo is to make payments more fun, easy, and delightful. He also invented emoji autocomplete.\nIf you want to chat about anything from building iPhone apps in Swift to becoming a player in the Fin-Tech industry, say hello on twitter @dasmersingh!",
            image: #imageLiteral(resourceName: "dasmer")
        ),
        Speaker(
            id: 7,
            name: "Ellen Shapiro",
            shortBio: "Ellen is the Lead Mobile Developer for SpotHero",
            longBio: "Ellen is the Lead Mobile Developer for SpotHero and former Director of iOS Engineering at an Vokal in Chicago, IL. She also builds Android apps and runs the Chicago AndroidListener meetup. She works in her spare time to bring leading songwriting application Hum to life, and writes iOS tutorials for RayWenderlich.com.",
            image: #imageLiteral(resourceName: "ellen")
        ),
        Speaker(
            id: 8,
            name: "Jaimee Newberry",
            shortBio: "Jaimee is a professional experimenter, UX coach, writer and speaker",
            longBio: "Jaimee has worked in the Web Interaction Design & Development industry since 1998, with emphasis on behavioral psychology-applied design for web, mobile web, iOS + Android applications, and product teams. After a 15-year, award-winning design career Jaimee successfully shifted her focus from hands-on product creation to coaching and inspiring world-renowned product teams through examples, relatable stories and constant experimentation in order to achieve more joy in life along with more compassionate teams and digital products.\nJaimee is an industry veteran and regarded expert on applying UX thinking, unique insight, and “experiment to innovate” practices to organizational processes and team health. Across her career, she has worked with remarkable companies like Audi, Apple, Barnes & Noble, Disney, McDonalds, Nintendo, UNLV, Zappos, and many more.",
            image: #imageLiteral(resourceName: "jaimee")
        ),
        Speaker(
            id: 9,
            name: "Jeff Watkins",
            shortBio: "Jeff runs a non-profit supporting organisations to increase diversity in the technology industry.",
            longBio: "Jeff Watkins lives a quiet, isolated life with his daughter and four cats on beautiful Bainbridge Island where he divides his time between creating fiendishly clever bugs in iOS software and his real passion, a fund raising non-profit dedicated to ensuring organisations striving to make positive improvements in diversity in the technology industry don't fail for a lack of funding.",
            image: #imageLiteral(resourceName: "jeff")
        ),
        Speaker(
            id: 10,
            name: "Bernhard Loibl & Mathias Nagler",
            shortBio: "iOS developers at the mobile app agency Kupferwerk.",
            longBio: "Mathias and Bernhard are iOS developers raised by wolves in the bavarian woods. After getting to know civilization they started working together at the mobile app agency Kupferwerk in Regensburg, Germany. They both have been developing for iOS since the early days and crafted apps for a variety of clients throughout the last years.",
            image: #imageLiteral(resourceName: "bernhard-mathias")
        ),
        Speaker(
            id: 11,
            name: "Laura Savino",
            shortBio: "Laura is an iOS developer with a passion for human languages, teaching & song.",
            longBio: "Laura is an iOS developer with a penchant for languages, travel, and education. She most recently built apps to transform students' academic experience at Khan Academy, and now independently codes, speaks, and teaches in Seattle.",
            image: #imageLiteral(resourceName: "laura")
        ),
        Speaker(
            id: 12,
            name: "Michael May",
            shortBio: "iOS developer since the app store launch. Fussy about coffee & easily upset by bad user interfaces.",
            longBio: "Michael has been an iOS developer since just after the app store launched, and various incarnations before that, including Windows when NT meant New Technology and Java when it had a Mobile Edition. He has a love of music, has seen him wash up at Songkick most recently, and has only made his music snobbery worse. Also; far too fussy about what coffee and beer he drinks, and very easily upset by bad user interfaces.",
            image: #imageLiteral(resourceName: "michael")
        ),
        Speaker(
            id: 13,
            name: "Shuichi Tsutsumi",
            shortBio: "iOS Freelancer. Author of BTLE Book, iOS Sampler series",
            longBio: "Shuichi is an iOS Freelancer who has developed many IoT related apps using Bluetooth Low Energy. He co-authored \"iOS x BLE Core Bluetooth Programming\" (2015) and authored \"iOS Programming - Advanced 100 Recipes\" (2013). He is the owner of popular OSS repositories such as iOS-9-Sampler, AnimatedTransitionGallery, and many more, ultimately totaling 15,000 stars.",
            image: #imageLiteral(resourceName: "shuichi")
        ),
        Speaker(
            id: 14,
            name: "Stephen Barnes",
            shortBio: "iOS Developer at Fitbit, coffee lover & digital artist",
            longBio: "Stephen is an engineer, an artist, and many things in between. He is currently a Senior iOS Developer at Fitbit, but he has previously worked on a number of things such as 3D, real-time training simulations, babysitting apps, retail apps for iOS and Android, 84″ touchscreens Mac apps, and more. Along the way he has enjoyed writing shaders in GLSL for an OpenSceneGraph based graphics engine and building useful libraries such as RZTransitions for iOS view controller transitions. And best of all, he got to work with a whole lot of really smart people to teach him things along the way. When he isn’t working on mobile apps, he enjoys digital art, West Coast Swing dancing, and cheesy sci-fi books.",
            image: #imageLiteral(resourceName: "stephen")
        ),
        Speaker(
            id: 15,
            name: "Steve Scott",
            shortBio: "Scotty is a developer, podcaster and conference organiser with a passion for community.",
            longBio: "Steve Scott (Scotty) has been a freelance developer since 1992 although he is probably best known for being the host on a number of developer podcasts including The iDeveloper Podcast. He was also the host and creator of NSConference.\nHe has been developer since 1987 when he started writing accounting software using COBOL on a Convergent Unix machine using vi as his IDE. (Sorry Emacs people). Since then he has worked on mainframes (ICL, DEC, &s; IBM), 16bit and 32 bit Windows, .NET and since 2007 OS X and (a little later) iOS . During his career he has learnt (and forgotten) more languages and IDE’s than is possibly healthy for one lifetime.",
            image: #imageLiteral(resourceName: "steve")
        ),
    ]
}
