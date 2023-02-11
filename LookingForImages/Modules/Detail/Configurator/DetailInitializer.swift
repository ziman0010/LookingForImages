//
//  DetailInitializer.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 08.02.2023.
//


import UIKit

final class DetailInitializer: NSObject {
    
    @IBOutlet private weak var viewController: DetailViewController!
    
    static func controller(results: [ImageResult], currentIndex: Int) -> DetailViewController {
        
        let storyboard = UIStoryboard(name: "Detail", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! DetailViewController
        
        let configurator = DetailConfigurator()
        configurator.configure(viewController: viewController,
                               results: results,
                               currentIndex: currentIndex)
        
        return viewController
    }
}
