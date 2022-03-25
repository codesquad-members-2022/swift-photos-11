//
//  ViewController.swift
//  photos
//
//  Created by jsj on 2022/03/21.
//

import UIKit
import Photos


class ViewController: UIViewController {
    private var currentIndex = 0
    private var allPhotos: PHFetchResult<PHAsset>?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Photos"
        self.allPhotos = PHAsset.fetchAssets(with: nil)
        self.collectionView.reloadData()
    }
}

// MARK:- UICollecitonView Delegate
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allPhotos?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "albumCell", for: indexPath) as! AlbumCell
        let asset = self.allPhotos?[indexPath.item]
        let thumbnailSize = CGSize(width: 100.0, height: 100.0)
        LocalImageManager.shared.requestImage(with: asset, thumbnailSize: thumbnailSize) {
            (image) in cell.configure(with: image)
        }
        return cell
    }
}


// MARK:- PHPhotoLibraryChangeObserver
extension ViewController: PHPhotoLibraryChangeObserver {
    func photoLibraryDidChange(_ changeInstance: PHChange) {
        self.allPhotos = PHAsset.fetchAssets(with: nil)
        
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
}
