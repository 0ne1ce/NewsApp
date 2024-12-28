//
//  Router.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

// MARK: - Router
final class Router: RouterInput {
    // MARK: - Properties
    weak var view : UIViewController!
    
    // MARK: - Functions
    func showNewScreen(url: URL?) {
        let webView = WebViewController()
        webView.url = url
        view.navigationController?.pushViewController(webView, animated: true)
    }
}
