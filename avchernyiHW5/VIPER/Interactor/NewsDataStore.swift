//
//  NewsDataStore.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

// MARK: - NewsDataStore
protocol NewsDataStore: AnyObject {
    // MARK: - Properties
    var articles: [ArticleModel] { get set }
}
