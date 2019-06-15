//
//  Event.swift
//  swiftUILearning1
//
//  Created by Kevin Evans on 09/06/2019.
//  Copyright © 2019 Kevin Evans. All rights reserved.
//

import SwiftUI


struct Events : Decodable {
    let events : [Event]
}
struct Event : Decodable, Hashable, Identifiable {
    let id : Int
    let posterWidth, posterHeight : Int
    let posterUri, score, title: String
}
