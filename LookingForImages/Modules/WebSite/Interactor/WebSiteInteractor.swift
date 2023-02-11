//
//  WebSiteInteractor.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 09.02.2023.
//

import Foundation

protocol WebSiteBuisnessLogic: AnyObject {
    func load()
}

final class WebSiteInteractor: WebSiteBuisnessLogic {
    
    var presenter: WebSitePresentationLogic?
    var url: String?
    
    func load() {
        guard let urlString = url, let url = URL(string: urlString) else {
            presenter?.presentError()
            return
        }
        let urlRequest = URLRequest(url: url)
        presenter?.present(request: urlRequest)
    }
    
}
