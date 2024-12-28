//
//  ArticleModel.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

// MARK: - ArticleModel
struct ArticleModel: Decodable {
    // MARK: - Properties
    var newsId: Int?
    var title: String?
    var announce: String?
    var img: ImageContainer?
    var requestId: String?
    var articleUrl: URL? {
        let requestId = requestId ?? ""
        let newsId = newsId ?? 0
        return URL(
            string: "https://news.myseldon.com/ru/news/index/\(newsId)?requestId=\(requestId)"
        )
    }
}
