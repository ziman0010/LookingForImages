//
//  WebSiteConfigurator.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 09.02.2023.
//

import Foundation

final class WebSiteConfigurator {
    
    func configure(viewController: WebSiteViewController, url: String) {
        
        let presenter = WebSitePresenter()
        presenter.viewController = viewController
        
        let interactor = WebSiteInteractor()
        interactor.url = url
        interactor.presenter = presenter
        
        viewController.interactor = interactor
    }
}
