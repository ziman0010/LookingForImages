//
//  WebSiteViewController.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 09.02.2023.
//

import UIKit
import WebKit

protocol WebSiteDisplayLogic: AnyObject {
    func show(request: URLRequest)
    func showError()
}

final class WebSiteViewController: UIViewController, WebSiteDisplayLogic {
    
    var interactor: WebSiteBuisnessLogic?
    
    
    @IBOutlet weak var webView: WKWebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.load()
    }
    
    func show(request: URLRequest) {
        webView?.load(request)
    }
    
    func showError() {
        let alertController = UIAlertController(title: "Warning", message: "Something went wrong", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alertController, animated: true)
    }
}
