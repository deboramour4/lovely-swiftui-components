//
//  Article.swift
//  LovelyUI
//
//  Created by Debora Moura on 27/06/20.
//  Copyright © 2020 Debora Moura. All rights reserved.
//

import Foundation

struct Article: Hashable {
    let title: String
    let authorName: String
    let authorImageName: String
    let liked: Bool
    let imageName: String
}

struct ArticleTest {
    static let all: [Article] = [
        Article(title: "20-minutes Outdoor Can Make You Less Stress", authorName: "Callie Cox", authorImageName: "user1", liked: true, imageName: "workout2"),
        Article(title: "20 simple DIYs to try during quarentine", authorName: "Aden Bowers", authorImageName: "user2", liked: false, imageName: "workout3"),
        Article(title: "20 simple DIYs to try during quarentine. I am an example text, modify if you need it. Test if your view if bugging with a biggest text.", authorName: "Patricia Lutz", authorImageName: "user3", liked: false, imageName: "workout1")
    ]
}
