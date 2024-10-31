//
//  GlobalHelpers.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/28/24.
//

import Foundation
import SwiftUI

// posts
//struct Post {
//    var id: String
//    var created_at: Date
//    var photo: URL
//    var family: String // type: id
//    var activities: [String]
//    var approved: Bool
//}

var post1 = Post(
    id: "1234",
    created_at: Date(),
    description: "Fam picnic in Central Park 🌸🧺",
    photos: [
        URL(string: "https://plus.unsplash.com/premium_photo-1680706777258-553b9357eb04?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!,
        URL(string: "https://images.unsplash.com/photo-1605654575707-167d2c774594?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!,
        URL(string: "https://plus.unsplash.com/premium_photo-1664368276723-f4c5e465db80?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!
    ],
    family: "Ho Chi Honeys",
    activities: ["Picnic", "All family members", "Downtown"],
    approved: false
)

var post2 = Post(
    id: "5678",
    created_at: Date(),
    description: "Leadership training ????",
    photos: [
        URL(string: "https://plus.unsplash.com/premium_photo-1664461348296-2dc2207b1c82?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!,
        URL(string: "https://images.unsplash.com/photo-1605654575707-167d2c774594?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!,
        URL(string: "https://plus.unsplash.com/premium_photo-1664368276723-f4c5e465db80?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!
    ],
    family: "Saigon Sillies",
    activities: ["Beach Walk", "Sunset Viewing", "Seaside Dining"],
    approved: true
)

var post3 = Post(
    id: "9101",
    created_at: Date().addingTimeInterval(-86400), // 1 day ago
    description: "Family painting night 🎨",
    photos: [
        URL(string: "https://images.unsplash.com/photo-1522167428-d603a1d62f26?q=80&w=2896&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!,
        URL(string: "https://images.unsplash.com/photo-1605654575707-167d2c774594?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!,
        URL(string: "https://plus.unsplash.com/premium_photo-1664368276723-f4c5e465db80?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!
    ],
    family: "Saigon Sillies",
    activities: ["Hiking", "Photography", "Camping"],
    approved: false
)

var post4 = Post(
    id: "1121",
    created_at: Date().addingTimeInterval(-604800), // 1 week ago
    description: "Family gathering at the lake house 🛶🏡",
    photos: [
        URL(string: "https://plus.unsplash.com/premium_photo-1672281064815-511a9b646216?q=80&w=2897&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!,
        URL(string: "https://images.unsplash.com/photo-1605654575707-167d2c774594?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!,
        URL(string: "https://plus.unsplash.com/premium_photo-1664368276723-f4c5e465db80?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")!
    ],
    family: "2SE",
    activities: ["Fishing", "Boating", "Campfire"],
    approved: true
)

var posts = [post1, post2, post3, post4]

var family1 = Family(id: "123", name: "Ho Chi Honeys", points: 75, photo: URL(string: "https://www.shutterstock.com/image-photo/diverse-group-happy-young-best-600nw-2209483491.jpg")!)

var family2 = Family(id: "123", name: "Saigon Sillies", points: 50, photo: URL(string: "https://www.shutterstock.com/image-photo/diverse-group-happy-young-best-600nw-2209483491.jpg")!)


var family3 = Family(id: "123", name: "Banh Bao", points: 23, photo: URL(string: "https://www.shutterstock.com/image-photo/diverse-group-happy-young-best-600nw-2209483491.jpg")!)

var family4 = Family(id: "123", name: "2SE", points: 25, photo: URL(string: "https://www.shutterstock.com/image-photo/diverse-group-happy-young-best-600nw-2209483491.jpg")!)


var family5 = Family(id: "123", name: "Military Family", points: 69, photo: URL(string: "https://www.shutterstock.com/image-photo/diverse-group-happy-young-best-600nw-2209483491.jpg")!)

var family6 = Family(id: "123", name: "Random Fam", points: 0, photo: URL(string: "https://www.shutterstock.com/image-photo/diverse-group-happy-young-best-600nw-2209483491.jpg")!)

var families = [family1, family2, family3, family4, family5, family6]

var announcement1 = Announcement(id: "123", created_at: Date(), title: "ACE Family picnic @ Math Lawn!", description: "Come join us for our first event of the year! We'll be making lanterns and enjoying mooncakes :D")

var announcement2 = Announcement(
    id: "124",
    created_at: Date(),
    title: "VSA Mid-Autumn Festival Celebration",
    description: "Celebrate the Mid-Autumn Festival with us! Join us for traditional Vietnamese games, lantern making, and mooncake tasting."
)

var announcement3 = Announcement(
    id: "125",
    created_at: Date(),
    title: "Vietnamese Cooking Workshop",
    description: "Learn how to cook authentic Vietnamese dishes with our VSA chefs! This week: Pho and Spring Rolls. Spots are limited!"
)

var announcement4 = Announcement(
    id: "126",
    created_at: Date(),
    title: "VSA Tet (Lunar New Year) Celebration",
    description: "Ring in the Lunar New Year with VSA! Enjoy cultural performances, traditional games, and lucky red envelopes for all!"
)

var announcement5 = Announcement(
    id: "127",
    created_at: Date(),
    title: "Vietnamese Coffee Social",
    description: "Relax and connect over authentic Vietnamese coffee and pastries. Perfect for meeting other members and practicing Vietnamese!"
)

var announcement6 = Announcement(
    id: "128",
    created_at: Date(),
    title: "Vietnamese Language Exchange",
    description: "Want to improve your Vietnamese or help others learn? Join our language exchange for fun, games, and new friendships!"
)

var announcement7 = Announcement(
    id: "129",
    created_at: Date(),
    title: "VSA Charity Fundraiser Night",
    description: "Support a good cause and enjoy a night of fun activities, food, and performances. All proceeds go to charity organizations in Vietnam."
)

var announcement8 = Announcement(
    id: "130",
    created_at: Date(),
    title: "VSA Karaoke Night",
    description: "Unleash your inner pop star at our Karaoke Night! Sing Vietnamese and English hits with friends and enjoy a night of laughs."
)

var announcements = [announcement1, announcement2, announcement3, announcement4, announcement5, announcement6, announcement7, announcement8]
