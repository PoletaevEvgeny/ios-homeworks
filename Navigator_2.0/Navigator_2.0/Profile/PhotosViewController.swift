//
//  PhotosViewController.swift
//  Navigator_2.0
//
//  Created by Евгений Полетаев on 02.07.2023.
//

import UIKit

class PhotosViewController: UIViewController {
    
    fileprivate let photos = PhotoModel.make()
    
    let cellIdentifire = "photoCellIdentifire"
    let sectionInsets = UIEdgeInsets(top: 8.0, left: 8.0, bottom: 8.0, right: 8.0)
    let itemsPerRow: CGFloat = 3
    
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()


        
        navigationController?.navigationBar.isHidden = false

        let titleLabel = UILabel()
        titleLabel.text = "Photo Gallery"
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 18)

        navigationItem.titleView = titleLabel
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = sectionInsets.left
        layout.minimumLineSpacing = sectionInsets.left
        let width = (view.frame.width - (sectionInsets.left + sectionInsets.right + layout.minimumInteritemSpacing * (itemsPerRow - 1))) / itemsPerRow
        layout.itemSize = CGSize(width: width, height: width)
        layout.sectionInset = sectionInsets
        
        collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        collectionView.register(PhotosCollectionViewCell.self, forCellWithReuseIdentifier: PhotosCollectionViewCell.identifier)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}

extension PhotosViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotosCollectionViewCell.identifier, for: indexPath) as! PhotosCollectionViewCell

        cell.updateContent(with: photos[indexPath.row])
        
        return cell
    }
}

extension PhotosViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
}
