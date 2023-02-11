//
//  SearchInitializer.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 06.02.2023.
//

import UIKit

final class SearchInitializer: NSObject {
    
    @IBOutlet private weak var viewController: SearchViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let configurator = SearchConfigurator()
        configurator.configure(viewController: viewController)
    }
}
