//
//  DetailInteractor.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 08.02.2023.
//

import UIKit

protocol DetailBuisnessLogic: AnyObject {
    
    func loadImage()
    func loadPrev()
    func loadNext()
    func loadLink()
}

final class DetailInteractor: DetailBuisnessLogic {
    
    private let imageLoader: ImageLoader
    
    
    private let results: [ImageResult]
    private var currentIndex: Int
    
    var presenter: DetailPresentationLogic?
    
    init(imageLoader: ImageLoader,
         results: [ImageResult],
         currentIndex: Int) {
        
        self.imageLoader = imageLoader
        self.results = results
        self.currentIndex = currentIndex
    }
    
    //MARK: - DetailBuisnessLogic
    
    func loadImage() {
        let urlString = results[currentIndex].thumbnail
        guard let url = URL(string: urlString) else {
            return
        }
        imageLoader.load(from: url) { [weak self] image in
            self?.presenter?.present(image: image)
        }
        
    }
    
    func loadPrev() {
        guard currentIndex - 1 >= 0 else {
            return
        }
        currentIndex -= 1
        loadImage()
    }
    
    func loadNext() {
        guard currentIndex + 1 < results.count else {
            return
        }
        currentIndex += 1
        loadImage()
    }
    
    func loadLink() {
        presenter?.present(url: results[currentIndex].link) 
    }
}
