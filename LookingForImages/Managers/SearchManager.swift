//
//  SearchManager.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 06.02.2023.
//

import UIKit
import LINetworking

final class SearchManager {
    
    private let restExecuter: RestExecutor
    
    init(restExecuter: RestExecutor) {
        self.restExecuter = restExecuter
    }
    
    func searchPhoto(query: String, completion: @escaping (SearchResponse?) -> Void) {
        restExecuter.performSearchGet(query: query) { result in
            switch result {
            case .success(let response):
                guard let response = response as? SearchResponse else {
                    completion(nil)
                    return
                }
                completion(response)
            case .failure(let error):
                print("🥲 \(error.localizedDescription)")
                completion(nil)
            }
        }
    }
}
