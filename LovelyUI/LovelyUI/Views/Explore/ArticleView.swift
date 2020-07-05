//
//  ArticleLargeView.swift
//  LovelyUI
//
//  Created by Debora Moura on 27/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import SwiftUI

struct ArticleView: View {
    let article: Article
    
    @State var isFavorite: Bool
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(20.0)
                .clipped()
            
            VStack(spacing: 20) {
                Image(article.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 175, alignment: .center)
                    .clipped()
                    .cornerRadius(20.0, corners: [.topLeft, .topRight])
                
                VStack(alignment: .leading, spacing: 15) {
                    Text(article.title)
                        .font(Font.system(size: 20, weight: .bold))
                        .frame(height: 50, alignment: .top)
                        .truncationMode(.tail)
                    HStack {
                        Image(article.authorImageName)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .cornerRadius(10.0)
                        Text(article.authorName)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.darkGray)
                        Spacer()
                        
                        Button(action: {
                            self.isFavorite = !self.isFavorite
                        }) {
                            Image("heart")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(isFavorite ? Color.red : Color.lightGray)
                        }
                    }
                }
                .padding(.horizontal, 20.0)
                
                Spacer()
            }
        }
    }
}
