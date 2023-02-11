//
//  Factory.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 06.02.2023.
//

import Foundation
import LINetworking

final class Factory {
    
    static let shared = Factory()
    
    func createSearchManager() -> SearchManager {
        let restExecuter =  NetworkingFactory.shared.makeRestExecutor()
        return SearchManager(restExecuter: restExecuter)
    }
    
    func createImageLoader() -> ImageLoader {
        let restExecuter =  NetworkingFactory.shared.makeRestExecutor()
        return ImageLoader(restExecuter: restExecuter)
    }
}
