//
//  Post.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 21.06.2023.
//

import UIKit

struct Post {
    let title: String
}

func main() {
    
    let myPost = Post(title: "New post")
    
    let postViewController = PostViewController()
    
    postViewController.post = myPost
}
