//
//  NewsBuisnessLogic.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

// MARK: - NewsBuisnessLogic
protocol NewsBuisnessLogic: AnyObject {
    // MARK: - Functions
    func loadFreshNews()
    func loadMoreNews()
    func getArticleURL(indexPath: IndexPath) -> URL?
    func getArticleCount() -> Int
    func getArticleElem(row: Int) -> ArticleModel
}
