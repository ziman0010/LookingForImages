//
//  SearchCell.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 06.02.2023.
//

import UIKit

final class SearchCell: UICollectionViewCell {
    
    static let reuseId = String(describing: SearchCell.self)
    
    @IBOutlet weak var imageView: UIImageView?
    
    private let imageLoader: ImageLoader = Factory.shared.createImageLoader()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView?.image = nil
    }
    
    func set(url: String) {
        loadImage(url: url) { image in
            DispatchQueue.main.async {
                self.imageView?.image = image
            }
        }
    }
    
    private func loadImage(url: String, completion: @escaping (UIImage?) -> Void) {
        guard let url = URL(string: url) else {
            completion(nil)
            return
        }
        imageLoader.load(from: url) { image in
            completion(image)
        }
    }
}
