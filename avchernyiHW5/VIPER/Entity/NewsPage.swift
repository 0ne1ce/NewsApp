//
//  NewsPage.swift
//  avchernyiHW5
//
//  Created by Алексей on 28.12.2024.
//

import Foundation
import UIKit

// MARK: - NewsPage
struct NewsPage: Decodable {
    var news: [ArticleModel]?
    var requestId: String?
    mutating func passTheRequestId() {
        for i in 0..<(news?.count ?? 0) {
            news?[i].requestId = requestId
        }
    }
}
