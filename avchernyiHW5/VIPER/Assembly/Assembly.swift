//
//  Assembly.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

// MARK: - Assembly
final class Assembly {
    // MARK: - Functions
    class func configuredModule() -> UIViewController {
        let view = NewsViewController()
        let interactor = Interactor()
        let presenter = Presenter()
        let router = Router()
        let worker = ArticleWorker()
        
        
        view.output = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.output = presenter
        interactor.worker = worker
        
        router.view = view
        
        let nav = UINavigationController(rootViewController: view)
        
        return nav
    }
}
