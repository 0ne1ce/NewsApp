//
//  NewsView.swift
//  avchernyiHW5
//
//  Created by Алексей on 28.12.2024.
//

import Foundation
import UIKit

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
    
    // MARK: - Functions
    private func configureUI() {
        configureTableView()
    }
    
    private func configureTableView() {
        addSubview(tableView)
        tableView.backgroundColor = .lightGray
        tableView.separatorStyle = .none
        
        tableView.pinHorizontal(to: self, Constants.NewsView.offsetH)
        tableView.pinTop(to: self.safeAreaLayoutGuide.topAnchor, Constants.NewsView.offsetV)
        tableView.pinBottom(to: self.safeAreaLayoutGuide.bottomAnchor, -Constants.NewsView.offsetV)
        
        tableView.layer.cornerRadius = Constants.NewsView.radius
    }
    
}
