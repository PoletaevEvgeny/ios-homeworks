//
//  ProfileViewController.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 21.06.2023.
//

import UIKit

class ProfileViewController: UIViewController {

    var profileHeaderView: ProfileHeaderView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGray
        self.navigationItem.title = "Profile"
        
        super.viewDidLoad()
        profileHeaderView = ProfileHeaderView()
        view.addSubview(profileHeaderView)
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
        
        profileHeaderView.frame = view.frame
    }
    
    @objc func showDetails() {
        let feedViewController = FeedViewController()
        //present(feedViewController, animated: true)
        navigationController?.pushViewController(feedViewController, animated: true)
    }
    
    func setupUI(){
            view.addSubview(profileHeaderView)
            
            NSLayoutConstraint.activate([
                profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                profileHeaderView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
                profileHeaderView.leftAnchor.constraint(equalTo: view.leftAnchor),
                profileHeaderView.rightAnchor.constraint(equalTo: view.rightAnchor)
            ])
            
        }
}

