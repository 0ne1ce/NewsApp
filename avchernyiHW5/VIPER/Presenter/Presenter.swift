//
//  Presenter.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

final class Presenter: ViewOutput, InteractorOutput {
    // MARK: - Properties
    weak var view: ViewInput!
    var interactor: NewsBuisnessLogic!
    var router: RouterInput!
    
    // MARK: - Functions
    func pressed() {
        router.alertExample()
    }
    
    func loadFreshNews() {
        
    }
    
    func loadMoreNews() {
        
    }
    
    func presentNews() {
        self.view.presentNews()
    }
}
