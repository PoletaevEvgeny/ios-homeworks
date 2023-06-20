//
//  ProfileViewController.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 21.06.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.gray
        self.navigationItem.title = "Profile"
    }
    
    override  func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let  button = UIButton(type: .system)
        button.isUserInteractionEnabled = true
        button.frame = CGRect(origin: CGPoint(x: 30,y: 100), size: CGSize(width: 150, height: 30))
        button.setTitle("Show feed", for: .normal)
        button.backgroundColor = .systemGreen
        view.addSubview(button)
        button.addTarget(self, action: #selector(showDetails), for: .touchUpInside)
    }
    
    @objc func showDetails() {
        let feedViewController = FeedViewController()
        //present(feedViewController, animated: true)
        navigationController?.pushViewController(feedViewController, animated: true)
    }
}

