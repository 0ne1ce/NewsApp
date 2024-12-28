//
//  ViewOutput.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

// MARK: - ViewOutput
protocol ViewOutput: AnyObject {
    // MARK: - Functions
    func loadFreshNews()
    func loadMoreNews()
    func showNewScreen(url: URL?, indexPath: IndexPath)
    func getArticleURL(indexPath: IndexPath) -> URL?
    func getArticleCount() -> Int
    func getArticleElem(row: Int) -> ArticleModel
}
