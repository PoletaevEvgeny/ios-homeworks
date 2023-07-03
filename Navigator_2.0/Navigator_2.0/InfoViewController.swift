//
//  InfoViewController.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 21.06.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    private lazy var alertButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ding", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(runAlert), for: .touchUpInside)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(alertButton)
        NSLayoutConstraint.activate([
            alertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            alertButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            alertButton.heightAnchor.constraint(equalToConstant: 50),
            alertButton.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    @objc func runAlert() {
        let alert = UIAlertController(title: "Ding", message: "Good day?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Yes", style: .default) { _ in
            print("Nice")
        }
        let noAction = UIAlertAction(title: "No", style: .cancel)  { _ in
            print("I can help")
        }
        alert.addAction(okAction)
        alert.addAction(noAction)
        present(alert, animated: true)
    }
    
    
    @objc func returnScreen() {
        dismiss(animated: true)
    }
}

