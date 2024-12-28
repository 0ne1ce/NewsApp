//
//  WebView.swift
//  avchernyiHW5
//
//  Created by Алексей on 28.12.2024.
//

import Foundation
import UIKit
import WebKit

// MARK: - WebView
final class WebView: UIView {
    // MARK: - Properties
    private var webView = WKWebView()
    
    // MARK: - Initialization
    init() {
        super.init(frame: .zero)
        configureUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    func load(_ request: URLRequest) {
        webView.load(request)
    }
    
    // MARK: - Private functions
    private func configureUI() {
        addSubview(webView)
        
        webView.pinHorizontal(to: self)
        webView.pinTop(to: self.safeAreaLayoutGuide.topAnchor)
        webView.pinBottom(to: self.safeAreaLayoutGuide.bottomAnchor)
    }
}
