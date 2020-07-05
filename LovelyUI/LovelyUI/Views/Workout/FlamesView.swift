//
//  Flames.swift
//  LovelyUI
//
//  Created by Debora Moura on 26/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import SwiftUI

struct FlamesView: View {
    let intensity: Workout.Intensity
    
    var body: some View {
        HStack(spacing: 4) {
            ForEach(0..<3) { index in
                Image("flame")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(self.flameColor(index))
            }
        }
    }
    
    func flameColor(_ index: Int) -> Color {        
        switch intensity {
        case .low:
            return index >= 1 ? Color.lightGray : Color.accentColor
        case .medium:
            return index >= 2 ? Color.lightGray : Color.accentColor
        case .intense:
            return Color.accentColor
        }
    }
}
