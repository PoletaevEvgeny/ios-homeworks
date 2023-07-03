//
//  PostView.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 30.06.2023.
//

import UIKit

struct Post {
    let author: String
    var description: String
    var image: String
    var likes: Int
    var views: Int
    static func createPost() -> [Post] {
        var post = [Post]()
        
        post.append(Post(author: "Friends", description: "Собака которая заблудилась", image: "cat and dog", likes: 17, views: 30))
        post.append(Post(author: "New", description: "Свежие вести с полей", image: "cat and crow", likes: 15, views: 25))
        post.append(Post(author: "Love", description: "Люблю свою котю", image: "cats2", likes: 22, views: 38))
        post.append(Post(author: "Sport", description: "На тренировке по левитации ", image: "cats", likes: 25, views: 32))
        
        return post
    }
}
