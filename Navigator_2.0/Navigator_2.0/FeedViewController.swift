//
//  FeedViewController.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 21.06.2023.
//

import UIKit

class FeedViewController: UIViewController {

    let post = Post(title: "My First Post")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        self.navigationItem.title = "Feed"
        
        let postViewController = PostViewController()
               
               postViewController.post = post
               
               present(postViewController, animated: true, completion: nil)
    }
    
    override  func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let  button = UIButton(type: .system)
        button.isUserInteractionEnabled = true
        button.frame = CGRect(origin: CGPoint(x: 125,y: 100), size: CGSize(width: 150, height: 30))
        button.setTitle("Show post", for: .normal)
        button.backgroundColor = .systemYellow
        view.addSubview(button)
        button.addTarget(self, action: #selector(showDetails), for: .touchUpInside)
    }
    
    @objc func showDetails() {
        let feedViewController = PostViewController()
        //present(feedViewController, animated: true)
        navigationController?.pushViewController(feedViewController, animated: true)
    }
}
