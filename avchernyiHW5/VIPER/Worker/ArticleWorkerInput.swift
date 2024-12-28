//
//  ArticleWorkerInput.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

// MARK: - ArticleWorkerInput
protocol ArticleWorkerInput: AnyObject {
    // MARK: - Functions
    func getNews(completion: @escaping ([ArticleModel]) -> Void)
    func getMoreNews(completion: @escaping ([ArticleModel]) -> Void)
}
