//
//  DetailConfigurator.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 08.02.2023.
//

import Foundation

final class DetailConfigurator {
    
    func configure(viewController: DetailViewController,
                   results: [ImageResult],
                   currentIndex: Int) {
        
        let factory = Factory.shared
        let presenter = DetailPresenter()
        presenter.viewController = viewController
        
        let interactor = DetailInteractor(imageLoader: factory.createImageLoader(),
                                          results: results,
                                          currentIndex: currentIndex)
        interactor.presenter = presenter
        
        viewController.interactor = interactor
    }
}
