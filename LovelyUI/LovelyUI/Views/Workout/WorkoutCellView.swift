//
//  WorkoutCell.swift
//  LovelyUI
//
//  Created by Debora Moura on 26/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import SwiftUI

struct WorkoutCellView: View {
    let workout: Workout
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(20.0)
            
            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    FlamesView(intensity: workout.intensity)
                    Text(workout.name)
                        .fontWeight(.bold)
                    Text("\(workout.level.rawValue) ∙ \(workout.minutes) mins")
                        .foregroundColor(Color.gray)
                }
                .padding(.leading, 16)
                
                Spacer()
                Image(workout.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .cornerRadius(20.0, corners: [.topRight, .bottomRight])
            }
        }
    }
}
