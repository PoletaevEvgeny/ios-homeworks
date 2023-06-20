//
//  PostViewController.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 21.06.2023.
//

import UIKit

class PostViewController: UIViewController {

    var post: Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationItem.title = "Post"
        
        title = post?.title
        
        let barButtonItem = UIBarButtonItem(image: UIImage(named: "info"), style: .plain, target: self, action: #selector(barButtonTap))
        navigationItem.setRightBarButton(barButtonItem, animated: false)
    }
    
    @objc  func  barButtonTap() {
        let feedViewController = InfoViewController()
        present(feedViewController, animated: true)
        //navigationController?.pushViewController(feedViewController, animated: true)
    }
    @objc func showDetails(){
        
        let alertViewController = UIAlertController(title: "Ding", message: "Good day?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        let noAction = UIAlertAction(title: "No", style: .cancel)
        
        alertViewController.addAction(okAction)
        alertViewController.addAction(noAction)
        
        present(alertViewController, animated: true)
    }
}
