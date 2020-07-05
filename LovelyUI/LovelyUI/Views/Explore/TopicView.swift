//
//  TopicView.swift
//  LovelyUI
//
//  Created by Debora Moura on 29/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import SwiftUI

struct TopicView: View {
    let topic: Topic
    
    @State var isSelected: Bool = false
    
    var body: some View {
        Button(action: {
            self.isSelected = !self.isSelected
            print("topic: \(self.topic.title)")
        }) {
            VStack(spacing: 8) {
                Text(topic.emoji)
                    .font(Font.system(size: 34))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 18)
                    .background(topic.selectable && isSelected ? topic.selectedColor : Color.base)
                    .cornerRadius(25)
                Text(topic.title)
                    .font(Font.system(size: 15))
                    .foregroundColor(Color.black)
            }
        }
    }
}
