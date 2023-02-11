//
//  DetailPresenter.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 08.02.2023.
//

import UIKit

protocol DetailPresentationLogic: AnyObject {
    func present(image: UIImage?)
    func present(url: String)
}

final class DetailPresenter: DetailPresentationLogic {
    
    weak var viewController: DetailDisplayLogic?
    
    //MARK: - DetailPresenter
    
    func present(image: UIImage?) {
        viewController?.set(image: image)
    }
    
    func present(url: String) {
        viewController?.open(url: url)
    }
}

