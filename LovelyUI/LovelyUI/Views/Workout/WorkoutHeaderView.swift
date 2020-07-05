//
//  HeaderWorkout.swift
//  LovelyUI
//
//  Created by Debora Moura on 26/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import SwiftUI

struct WorkoutHeaderView: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            ZStack {
                Image("header_workout")
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(20)

                VStack(alignment: .leading, spacing: 10) {
                    Text("FITNESS")
                        .font(Font.system(size: 15.0, weight: .bold))
                        .foregroundColor(Color.cyan)
                    Text("Cardio")
                        .font(Font.system(size: 38.0, weight: .bold))
                        .foregroundColor(Color.white)
                    Text("Get active on your off\ndays and challenge your\nfriends")
                        .font(Font.system(size: 17.0, weight: .regular))
                        .foregroundColor(Color.white)
                        .padding(.top, 20)

                    Spacer()

                    HStack {
                        ForEach(1..<3) { index in
                            Image("user\(index)")
                                .resizable()
                                .cornerRadius(10)
                                .frame(width: 35, height: 35)
                        }
                        Text("+12")
                            .font(Font.system(size: 13, weight: .bold))
                            .padding(10)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                            .foregroundColor(Color.white)
                        
                        Spacer()

                        Button(action: {
                            print("workout header")
                        }) {
                            Text("Start")
                                .fontWeight(.bold)
                                .padding(.horizontal, 30)
                                .padding(.vertical, 15)
                                .background(Color.white)
                                .cornerRadius(15)
                                .foregroundColor(Color.accentColor)
                        }
                    }
                }
                .padding(.all, 30.0)
                .padding(.top, 50.0)
            }
            .padding(.top, 20.0)
            
            HeaderSectionView(title: "Trending")
        }
    }
}
