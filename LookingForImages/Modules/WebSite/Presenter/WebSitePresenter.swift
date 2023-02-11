//
//  WebSitePresenter.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 09.02.2023.
//

import Foundation

protocol WebSitePresentationLogic: AnyObject {
    func present(request: URLRequest)
    func presentError()
}

final class WebSitePresenter: WebSitePresentationLogic {
    
    weak var viewController: WebSiteDisplayLogic?
    
    func present(request: URLRequest) {
        viewController?.show(request: request)
    }
    
    func presentError() {
        viewController?.showError()
    }
}

