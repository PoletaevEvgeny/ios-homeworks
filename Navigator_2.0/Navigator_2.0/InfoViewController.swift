//
//  InfoViewController.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 21.06.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .purple
        self.navigationItem.title = "Info"
    }
    
    override  func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let  button = UIButton(type: .system)
        button.isUserInteractionEnabled = true
        button.frame = CGRect(origin: CGPoint(x: 125,y: 100), size: CGSize(width: 150, height: 30))
        button.setTitle("Show message", for: .normal)
        button.backgroundColor = .systemYellow
        view.addSubview(button)
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
    }
    
    
    @objc func showAlert() {
        let InfoViewController = InfoViewController()
        //present(feedViewController, animated: true)
        navigationController?.pushViewController(InfoViewController, animated: true)
        
        let alertViewController = UIAlertController(title: "Ding", message: "Good day?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Yes", style: .default) { _ in
            print("Nice")
        }
        let noAction = UIAlertAction(title: "No", style: .cancel)  { _ in
            print("I can help")
        }
        
        alertViewController.addAction(okAction)
        alertViewController.addAction(noAction)
        
        present(alertViewController, animated: true, completion: nil)
    }
}
