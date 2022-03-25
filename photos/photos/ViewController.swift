//
//  ViewController.swift
//  photos
//
//  Created by jsj on 2022/03/21.
//

import UIKit
import Photos

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    let cellCount = 40
    var currentIndex = 0
    
    private var allPhotos: PHFetchResult<PHAsset>?
    var thumbnailSize = CGSize.zero
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "albumCell", for: indexPath) as! AlbumCell
        
        let asset: PHAsset?
        if self.currentIndex >= 6 {
            asset = self.allPhotos?[0]
        } else {
            asset = self.allPhotos?[indexPath.item]
        }
        currentIndex += 1
        LocalImageManager.shared.requestImage(with: asset, thumbnailSize: self.thumbnailSize) {
            (image) in cell.configure(with: image)
        }
//        let r = CGFloat.random(in: 0...1)
//        let g = CGFloat.random(in: 0...1)
//        let b = CGFloat.random(in: 0...1)
//        let backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
//        cell.contentView.backgroundColor = backgroundColor
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Photos"
        
        self.allPhotos = PHAsset.fetchAssets(with: nil)
        self.collectionView.reloadData()
        self.thumbnailSize = CGSize(width: 100.0, height: 100.0)
        //let asset = self.allPhotos?[indexPath.item]
    }
}

extension ViewController: PHPhotoLibraryChangeObserver {
    func photoLibraryDidChange(_ changeInstance: PHChange) {
        self.allPhotos = PHAsset.fetchAssets(with: nil)
        
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
}
