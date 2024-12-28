//
//  Interactor.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

final class Interactor: InteractorInput, NewsDataStore, NewsBuisnessLogic {
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
        
    }
    
    func loadMoreNews() {
        
    }
}
