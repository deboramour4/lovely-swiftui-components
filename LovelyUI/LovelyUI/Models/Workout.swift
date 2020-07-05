//
//  Workout.swift
//  LovelyUI
//
//  Created by Debora Moura on 26/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import Foundation

struct Workout: Hashable {
    enum Intensity {
        case low
        case medium
        case intense
    }
    enum Level: String {
        case easy = "Begginer"
        case medium = "Intermediate"
        case hard = "Advanced"
    }
    let name: String
    let intensity: Intensity
    let level: Level
    let minutes: Int
    let imageName: String
}

struct WorkoutTest {
    static let all: [Workout] = [
        Workout(name: "Office Workout", intensity: .medium, level: .medium, minutes: 15, imageName: "workout1"),
        Workout(name: "Cardio and Legs", intensity: .intense, level: .easy, minutes: 40, imageName: "workout2"),
        Workout(name: "Abs Sequence", intensity: .low, level: .hard, minutes: 8, imageName: "workout3"),
        Workout(name: "Yoga Basics", intensity: .medium, level: .medium, minutes: 15, imageName: "workout4"),
        Workout(name: "Office Workout", intensity: .intense, level: .medium, minutes: 15, imageName: "workout5"),
        Workout(name: "Office Workout", intensity: .low, level: .medium, minutes: 15, imageName: "workout6"),
    ]
}
