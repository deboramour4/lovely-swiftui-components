//
//  ExploreView.swift
//  LovelyUI
//
//  Created by Debora Moura on 27/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import SwiftUI

struct ExploreView: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack {
                SearchView(text: "")
                    .padding(.horizontal, 20.0)
            
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0){
                        ForEach(ArticleTest.all, id: \.self) { article in
                            ArticleView(article: article, isFavorite: false)
                                .frame(width: 350)
                                .padding(.leading, 20)
                        }
                    }
                    
                }
                .padding(.vertical, 20)
                    
                VStack {
                    HeaderSectionView(title: "Topics For You")
                        .padding(.horizontal, 20.0)
                        .padding(.top, 20.0)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15){
                            ForEach(TopicTest.all, id: \.self) { topic in
                                TopicView(topic: topic)
                                    .padding(.leading, 20)
                            }
                        }
                        
                    }
                }
                .background(Color.white)
                    
            }
            .padding(.top, 20)
            .background(Color.base)
        }
        .navigationBarTitle("Explore")
    }
}
