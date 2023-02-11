//
//  DetailViewController.swift
//  LookingForImages
//
//  Created by Алексей Черанёв on 08.02.2023.
//

import UIKit

protocol DetailDisplayLogic: AnyObject {
    func set(image: UIImage?)
    func open(url: String)
}

final class DetailViewController: UIViewController, DetailDisplayLogic {
    
    var interactor: DetailBuisnessLogic?
    
    @IBOutlet weak var imageView: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.loadImage()
    }
    
    @IBAction func prevButtonPressed(_ sender: UIButton) {
        interactor?.loadPrev()
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        interactor?.loadNext()
    }
    
    @IBAction func goToWebSiteButtonPressed(_ sender: Any) {
        interactor?.loadLink()
    }
    
    //MARK: - DetailDisplayLogic
    
    func set(image: UIImage?) {
        DispatchQueue.main.async {
            self.imageView?.image = image
        }
    }
    
    
    func open(url: String) {
        let controller = WebSiteInitializer.controller(url: url)
        navigationController?.pushViewController(controller, animated: true)
    }

}
