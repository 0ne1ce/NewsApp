//
//  Interactor.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

final class Interactor: NewsDataStore, NewsBuisnessLogic {
    // MARK: - Properties
    weak var output: InteractorOutput!
    var worker: ArticleWorkerInput!
    
    var articles: [ArticleModel] = [] {
        didSet {
            output.presentNews()
        }
    }
    
    // MARK: - Functions
    func loadFreshNews() {
        worker.getNews { [weak self] articles in
            self?.articles = articles
        }
    }
    
    func loadMoreNews() {
        worker.getMoreNews { [weak self] articles in
            self?.articles += articles
        }
    }
    
    func getArticleURL(indexPath: IndexPath) -> URL? {
        return articles[indexPath.row].articleUrl
    }
    
    func getArticleCount() -> Int {
        return articles.count
    }
    
    func getArticleElem(row: Int) -> ArticleModel {
        return articles[row]
    }
}
