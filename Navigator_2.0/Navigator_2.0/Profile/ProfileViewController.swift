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
    
    private let newButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .gray
        view.setTitle("New Button", for: .normal)
        view.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        view.layer.masksToBounds = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.navigationItem.title = "Profile"
        setupUI()
        
        
    }
    func setupUI(){
        view.addSubview(profileHeaderView)
        view.addSubview(newButton)
        
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220),
            profileHeaderView.leftAnchor.constraint(equalTo: view.leftAnchor),
            profileHeaderView.rightAnchor.constraint(equalTo: view.rightAnchor),
            
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            newButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            newButton.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
        
    }
}
