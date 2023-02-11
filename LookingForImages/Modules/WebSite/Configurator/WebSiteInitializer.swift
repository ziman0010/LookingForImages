//
//  WebSiteInitializer.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 09.02.2023.
//

import UIKit

final class WebSiteInitializer: NSObject {
    
    @IBOutlet private weak var viewController: WebSiteViewController!
    
    static func controller(url: String) -> WebSiteViewController {
        
        let storyboard = UIStoryboard(name: "WebSite", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! WebSiteViewController
        
        let configurator = WebSiteConfigurator()
        configurator.configure(viewController: viewController,
                               url: url)
        
        return viewController
    }
}
