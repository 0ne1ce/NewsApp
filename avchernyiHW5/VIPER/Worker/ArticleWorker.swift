//
//  ArticleWorker.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

// MARK: - ArticleWorker
final class ArticleWorker: ArticleWorkerInput {
    // MARK: - Constants
    private let decoder: JSONDecoder = JSONDecoder()
    
    // MARK: - Properties
    private var newsPage: NewsPage = NewsPage()
    
    private var page: Int = Constants.ArticleWorker.page
    
    // MARK: - Functions
    internal func getNews(completion: @escaping ([ArticleModel]) -> Void) {
        fetchNews { [weak self] in
            completion(self?.newsPage.news ?? [])
        }
    }
    
    internal func getMoreNews(completion: @escaping ([ArticleModel]) -> Void) {
        page += 1
        fetchNews { [weak self] in
            completion(self?.newsPage.news ?? [])
        }
    }
    
    // MARK: - Private functions
    private func getURL(_ rubric: Int, _ pageIndex: Int) -> URL? {
        URL(string: "https://news.myseldon.com/api/Section?rubricId=\(rubric)&pageSize=8&pageIndex=\(pageIndex)")
    }
    
    private func fetchNews(completion: @escaping () -> Void) {
        guard let url = getURL(4, page) else { return }
        URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            if let error = error {
                print(error)
                return
            }
            if
                let self,
                let data = data,
                var newsPage = try? decoder.decode(NewsPage.self, from: data)
            {
                DispatchQueue.main.async {
                    newsPage.passTheRequestId()
                    self.newsPage = newsPage
                    completion()
                }
            }
            else {
                completion()
            }
        }.resume()
    }
}
