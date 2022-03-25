//
//  AlbumCell.swift
//  PhotoAlbum
//
//  Created by 허태양 on 2022/03/25.
//

import UIKit
import Photos

class AlbumCell: UICollectionViewCell {
    
    @IBOutlet weak var assetImageView: UIImageView!
    let imageManager = PHImageManager()
    
    var representedAssetIdentifier: String?
    
    var thumbnailSize: CGSize {
        return CGSize(width: 100.0, height: 100.0)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.assetImageView.contentMode = .scaleAspectFill
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func configure(with image: UIImage?) {
        self.assetImageView.image = image
    }
}
