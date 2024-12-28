//
//  WebViewController.swift
//  avchernyiHW5
//
//  Created by Алексей on 28.12.2024.
//

import Foundation
import UIKit
import WebKit

// MARK: - WebViewController
final class WebViewController: UIViewController {
    // MARK: - Properties
    var webView = WKWebView()
    var url: URL?
    
    // MARK: - Lifecycle
    override func loadView() {
        self.view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.load(URLRequest(url: url!))
    }
}
