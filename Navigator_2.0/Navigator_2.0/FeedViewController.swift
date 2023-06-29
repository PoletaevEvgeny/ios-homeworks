//
//  FeedViewController.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 21.06.2023.
//

import UIKit

class FeedViewController: UIViewController {

    let secondPost = Post(title: "My First Post")
    
    private lazy var firstButton: UIButton = {
           let button = UIButton()
           button.backgroundColor = .red
           button.setTitle("Go to the post", for: .normal)
           button.setTitleColor(.white, for: .normal)
           button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
           button.translatesAutoresizingMaskIntoConstraints = false
           return button
       }()
    
    private lazy var secondButton: UIButton = {
            let button = UIButton()
            button.backgroundColor = .blue
            button.setTitle("Go to the post", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
    
    private lazy var stackView: UIStackView = { [unowned self] in
           let stackView = UIStackView()
           stackView.translatesAutoresizingMaskIntoConstraints = false

           stackView.axis = .vertical
           stackView.spacing = 10
           
           stackView.addArrangedSubview(self.firstButton)
           stackView.addArrangedSubview(self.secondButton)
           return stackView
       }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
           view.addSubview(stackView)
       }

       private func setupConstraints() {
           NSLayoutConstraint.activate([
               stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
               stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)]) }

       @objc private func tapButton() {
           let postVC = PostViewController()
           postVC.post = secondPost
           navigationController?.pushViewController(postVC, animated: true)
       }
    
//    override  func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        let  button = UIButton(type: .system)
//        button.isUserInteractionEnabled = true
//        button.frame = CGRect(origin: CGPoint(x: 125,y: 100), size: CGSize(width: 150, height: 30))
//        button.setTitle("Show post", for: .normal)
//        button.backgroundColor = .systemYellow
//        view.addSubview(button)
//        button.addTarget(self, action: #selector(showDetails), for: .touchUpInside)
//    }
//
//    @objc func showDetails() {
//        let postViewController = PostViewController()
//        //present(feedViewController, animated: true)
//        navigationController?.pushViewController(postViewController, animated: true)
//    }
}
