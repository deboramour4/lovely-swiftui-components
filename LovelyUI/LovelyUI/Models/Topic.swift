//
//  Topic.swift
//  LovelyUI
//
//  Created by Debora Moura on 29/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import SwiftUI

struct Topic: Hashable {
    let title: String
    let emoji: String
    var selectedColor: Color? = nil
    var selectable: Bool {
        selectedColor != nil
    }
}

struct TopicTest {
    static let all: [Topic] = [
        Topic(title: "Nutrition", emoji: "🍉", selectedColor: nil),
        Topic(title: "Organic", emoji: "🌾", selectedColor: nil),
        Topic(title: "Meditation", emoji: "🍃", selectedColor: nil),
        Topic(title: "Nutrition", emoji: "🛏", selectedColor: nil),
        Topic(title: "Nutrition", emoji: "🍉", selectedColor: Color.accentColor),
        Topic(title: "Organic", emoji: "🌾", selectedColor: Color.cyan),
        Topic(title: "Meditation", emoji: "🍃", selectedColor: Color.orange),
        Topic(title: "Nutrition", emoji: "🛏", selectedColor: Color.pink),
    ]
}
