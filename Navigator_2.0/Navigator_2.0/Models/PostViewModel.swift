//
//  PostView.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 30.06.2023.
//

import UIKit

struct NewPost {
    let author: String
    let description: String
    let image: String
    var likes: Int
    var views: Int
}

let post1 = NewPost(author: "Playful Cat", description: "Собака которая заблудилась", image: "cat and dog", likes: 17, views: 30)
let post2 = NewPost(author: "Playful Cat", description: "Свежие вести с полей", image: "cat and crow", likes: 15, views: 25)
let post3 = NewPost(author: "Playful Cat", description: "Люблю свою котю", image: "cats2", likes: 22, views: 38)
let post4 = NewPost(author: "Playful Cat", description: "На тренировке по левитации ", image: "cats", likes: 25, views: 32)

var posts = [post1, post2, post3, post4]
