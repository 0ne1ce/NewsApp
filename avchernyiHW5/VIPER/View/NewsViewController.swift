//
//  ViewController.swift
//  avchernyiHW5
//
//  Created by Алексей on 26.12.2024.
//

import UIKit
import UIKit

// MARK: - NewsViewController
final class NewsViewController: UIViewController, ViewInput  {
    // MARK: - Properties
    var output: ViewOutput!
    var newsView: NewsView = NewsView()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        output.loadFreshNews()
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
        view.backgroundColor = .clear
        configureTableView()
    }
    
    private func configureTableView() {
        newsView.tableView.register(ArticleCell.self, forCellReuseIdentifier: Constants.ArticleCell.reuseId)
        newsView.tableView.delegate = self
        newsView.tableView.dataSource = self
    }

}

// MARK: - UITableViewDelegate
extension NewsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        output.showNewScreen(url: output.getArticleURL(indexPath: indexPath), indexPath: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.UITableViewDelegate.heightForRowAt
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let contentHeight = scrollView.contentSize.height
        let offsetY = scrollView.contentOffset.y
        let height = scrollView.frame.size.height
        
        if offsetY + height >= contentHeight - Constants.UITableViewDelegate.scrollOffset {
            output?.loadMoreNews()
        }
    }
}

// MARK: - UITableViewDataSource
extension NewsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return output.getArticleCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ArticleCell.reuseId, for: indexPath)
        guard let articleCell = cell as? ArticleCell else { return cell }
        
        articleCell.configure(output.getArticleElem(row: indexPath.row))
        
        return articleCell
    }
    
    
}
