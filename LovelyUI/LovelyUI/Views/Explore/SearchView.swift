//
//  SearchView.swift
//  LovelyUI
//
//  Created by Debora Moura on 27/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import SwiftUI
 
struct SearchView: View {
    @State var text: String
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(15.0)
            
            HStack(spacing: 20) {
                Image("search")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 20)
                    .padding(.leading, 20)
                    .foregroundColor(Color.darkGray)
                
                TextField("Search topic", text: $text)
                    .font(Font.system(size: 20, weight: .regular))
                    .foregroundColor(text == "" ? Color.darkGray : Color.black)
                
                Spacer()
            }
            .padding(.vertical, 15)
        }
    }
}
