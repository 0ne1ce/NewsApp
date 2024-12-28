//
//  ConstantsModel.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

enum Constants {
    // MARK: - ArticleCell
    enum ArticleCell {
        static let reuseId: String = "ArticleCell"
        
        
        static let imageCornerRadius: CGFloat = 10
        static let imageOffset: CGFloat = 5
        
        static let titleFont: UIFont = UIFont.boldSystemFont(ofSize: 16)
        static let titleOffsetH: CGFloat = 3
        static let titleHeight: CGFloat = 40
        
        static let shadowOpacityValue: Float = 0.8
        static let shadowSize: CGFloat = 0.2
        static let shadowRadius: CGFloat = 4
        
        static let newsDescriptionFont: UIFont = .systemFont(ofSize: 12)
        static let newsDescriptionOffsetH: CGFloat = 3
        static let newsDescriptionOffsetBottom: CGFloat = 2
        static let newsDescriptionHeight: CGFloat = 60
    }
    
    // MARK: - NewsView
    enum NewsView {
        static let radius: CGFloat = 20
    }
    
    // MARK: - ArticleWorker
    enum ArticleWorker {
        static let page: Int = 0
    }
    
    // MARK: - UITableViewDelegate
    enum UITableViewDelegate {
        static let heightForRowAt: CGFloat = 300
        static let scrollOffset: CGFloat = 100
    }
}
