//
//  SearchConfigurator.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 06.02.2023.
//

import Foundation

final class SearchConfigurator {
    
    func configure(viewController: SearchViewController) {
        
        let presenter = SearchPresenter()
        presenter.viewController = viewController
        
        let searchManager = Factory.shared.createSearchManager()
        let interactor = SearchInteractor(searchManager: searchManager)
        interactor.presenter = presenter
        
        viewController.interactor = interactor
    }
}
