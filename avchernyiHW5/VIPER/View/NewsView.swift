//
//  NewsView.swift
//  avchernyiHW5
//
//  Created by Алексей on 28.12.2024.
//

import Foundation
import UIKit

// MARK: - NewsView
final class NewsView: UIView {
    // MARK: - Properties
    let tableView: UITableView = UITableView()
    
    // MARK: - Initialization
    init() {
        super.init(frame: .zero)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private functions
    private func configureUI() {
        configureTableView()
    }
    
    private func configureTableView() {
        addSubview(tableView)
        tableView.backgroundColor = .lightGray
        tableView.separatorStyle = .none
        
        tableView.pinHorizontal(to: self)
        tableView.pinTop(to: self.topAnchor)
        tableView.pinBottom(to: self.bottomAnchor)
        
        tableView.layer.cornerRadius = Constants.NewsView.radius
    }
    
}
