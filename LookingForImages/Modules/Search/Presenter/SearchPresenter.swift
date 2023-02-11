//
//  SearchPresenter.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 06.02.2023.
//

import Foundation
import LINetworking

protocol SearchPresentationLogic: AnyObject {
    func present(response: SearchResponse)
    func presentError(type: SearchError)
}

final class SearchPresenter: SearchPresentationLogic {
    
    weak var viewController: SearchDisplayLogic?
    
    func present(response: SearchResponse) {
        let imageResults = response.imagesResults?.map {
            ImageResult(thumbnail: $0.thumbnail, link: $0.link)
        }
        if let imageResults = imageResults {
            viewController?.set(viewObject: imageResults)
        } else {
            viewController?.clear()
            viewController?.showError(title: "Warning", message: SearchError.noResults.rawValue)
        }
    }
    
    func presentError(type: SearchError) {
        viewController?.showError(title: "Warning", message: type.rawValue)
    }
}

