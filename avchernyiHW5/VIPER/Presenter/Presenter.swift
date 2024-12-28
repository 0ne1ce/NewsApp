//
//  Presenter.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

// MARK: - Presenter
final class Presenter: ViewOutput, InteractorOutput {
    // MARK: - Properties
    weak var view: ViewInput!
    var interactor: NewsBuisnessLogic!
    var router: RouterInput!
    
    // MARK: - Functions
    func loadFreshNews() {
        interactor.loadFreshNews()
    }
    
    func loadMoreNews() {
        interactor.loadMoreNews()
    }
    
    func presentNews() {
        self.view.presentNews()
    }
    
    func getArticleURL(indexPath: IndexPath) -> URL? {
        return interactor.getArticleURL(indexPath: indexPath)
    }
    
    
    func showNewScreen(url: URL?, indexPath: IndexPath) {
        router.showNewScreen(url: interactor.getArticleURL(indexPath: indexPath))
    }
    
    func getArticleCount() -> Int {
        return interactor.getArticleCount()
    }
    
    func getArticleElem(row: Int) -> ArticleModel {
        return interactor.getArticleElem(row: row)
    }
}
