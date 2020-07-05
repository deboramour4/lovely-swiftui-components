//
//  HeaderSectionView.swift
//  LovelyUI
//
//  Created by Debora Moura on 29/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import SwiftUI

struct HeaderSectionView: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(Font.system(size: 24.0, weight: .bold))
                
            Spacer()
            
            Button(action: {
                print("More: \(self.title)")
            }) {
                Text("• • •")
                    .foregroundColor(Color.lightGray)
            }
        }
    }
}
