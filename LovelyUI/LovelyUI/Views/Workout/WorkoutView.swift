//
//  MainList.swift
//  LovelyUI
//
//  Created by Debora Moura on 27/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import SwiftUI

struct WorkoutView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .center, spacing: 10) {

                WorkoutHeaderView()

                ForEach(WorkoutTest.all, id: \.self) { workout in
                    WorkoutCellView(workout: workout)
                }
            }
            .padding(.horizontal, 20.0)
            .background(Color.base)
        }
        .navigationBarTitle("Challenge")
    }
}
