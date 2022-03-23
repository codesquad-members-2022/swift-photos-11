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
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "albumCell", for: indexPath)
        let r = CGFloat.random(in: 0...1)
        let g = CGFloat.random(in: 0...1)
        let b = CGFloat.random(in: 0...1)
        let backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        cell.contentView.backgroundColor = backgroundColor
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Photos"
    }
}

extension PHAsset {
  func getAssetThumbnail() -> UIImage {
    let manager = PHImageManager.default()
    let option = PHImageRequestOptions()
    var thumbnail = UIImage()
      option.isSynchronous = true
    manager.requestImage(for: self,
                         targetSize: CGSize(width: 100.0, height: 100.0),
                            contentMode: .aspectFit,
                            options: option,
                            resultHandler: {(result, info) -> Void in thumbnail = result!
    })
    return thumbnail
  }
}
