//
//  UserModels.swift
//  ACE Family App
//
//  Created by Linh Dang on 10/28/24.
//

import Foundation

struct Post {
    var id: String
    var created_at: Date
    var description: String
    var photo: URL
    var family: String // type: id
    var activities: [String]
    var approved: Bool
}

struct Family {
    var id: String
    var name: String
    var points: Int
    var photo: URL
}

struct Announcement {
    var id: String
    var created_at: Date
    var title: String
    var description: String
}
