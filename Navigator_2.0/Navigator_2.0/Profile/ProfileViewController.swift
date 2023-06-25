//
//  ProfileViewController.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 21.06.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileHeaderView: ProfileHeaderView = {
         let profileHeaderView = ProfileHeaderView()
         profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
         return profileHeaderView
     }()

     override func viewDidLoad() {
         super.viewDidLoad()
         self.view.backgroundColor = .lightGray
         setupUI()
         
         
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

