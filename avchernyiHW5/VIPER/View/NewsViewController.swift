//
//  ViewController.swift
//  avchernyiHW5
//
//  Created by Алексей on 26.12.2024.
//

import UIKit
import UIKit

final class NewsViewController: UIViewController, ViewInput  {
    // MARK: - Properties
    var output: ViewOutput!
    var newsView: NewsView = NewsView()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    override func loadView() {
        view = newsView
    }
    
    // MARK: - Functions
    internal func presentNews() {
        newsView.tableView.reloadData()
    }
    
    // MARK: - Private functions
    private func configureUI() {
        view.backgroundColor = .red
        configureTableView()
    }
    
    private func configureTableView() {
        newsView.tableView.register(ArticleCell.self, forCellReuseIdentifier: "A")
        newsView.tableView.delegate = self
        newsView.tableView.dataSource = self
    }

}

extension NewsViewController: UITableViewDelegate {
    
}

extension NewsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
