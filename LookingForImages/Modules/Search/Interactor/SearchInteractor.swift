//
//  SearchInteractor.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 06.02.2023.
//

import LINetworking
import UIKit

protocol SearchBuisnessLogic: AnyObject {
    func search(query: String)
}

final class SearchInteractor: SearchBuisnessLogic {
    
    private let searchManager: SearchManager
    var presenter: SearchPresentationLogic?
    
    init(searchManager: SearchManager) {
        self.searchManager = searchManager
    }
    
    func search(query: String) {
        guard !query.isEmpty else {
            presenter?.presentError(type: .emptyQuery)
            return
        }
        
        searchManager.searchPhoto(query: query) { response in
            guard let response = response else {
                self.presenter?.presentError(type: .smthWentWrong)
                return
            }
            self.presenter?.present(response: response)
        }
    }
}
