//
//  ArticleCell.swift
//  avchernyiHW5
//
//  Created by Алексей on 28.12.2024.
//

import Foundation
import UIKit

// MARK: - ArtileCell
final class ArticleCell: UITableViewCell {
    // MARK: - Properties
    static let reuseId: String = Constants.ArticleCell.reuseId
    private let image = UIImageView()
    private let title = UILabel()
    private let newsDescription = UILabel()
    
    // MARK: - Initialization
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            
            configureUI()
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Cell Configuration
    func configure(_ model: ArticleModel) {
        title.text = model.title
        newsDescription.text = model.announce
        
        guard let imageURL = model.img else {
            image.image = nil
            return
        }
        
        ImageWorker.shared.loadImage(imageURL) { [weak self] loadedImage in
            self?.image.image = loadedImage
        }
    }
    
    // MARK: - Private functions
    private func configureUI() {
        selectionStyle = .none
        backgroundColor = .clear
        
        configureImage()
        configureDescription()
        configureTitle()
    }
    
    private func configureImage() {
        addSubview(image)
        image.layer.cornerRadius = Constants.ArticleCell.imageCornerRadius
        image.clipsToBounds = true
        image.pin(to: self, Constants.ArticleCell.imageOffset)
    }
    
    private func configureTitle() {
        image.addSubview(title)
        title.font = Constants.ArticleCell.titleFont
        title.textColor = .white
        
        title.lineBreakMode = .byWordWrapping
        title.numberOfLines = .zero
        
        labelShadow(label: title)
        
        title.pinHorizontal(to: image, Constants.ArticleCell.titleOffsetH)
        title.pinBottom(to: newsDescription.topAnchor)
        title.setHeight(Constants.ArticleCell.titleHeight)
    }
    
    private func configureDescription() {
        image.addSubview(newsDescription)
        newsDescription.font = Constants.ArticleCell.newsDescriptionFont
        newsDescription.textColor = .lightText
        
        newsDescription.lineBreakMode = .byTruncatingTail
        newsDescription.numberOfLines = .zero
        
        labelShadow(label: newsDescription)
        
        newsDescription.pinHorizontal(to: image, Constants.ArticleCell.newsDescriptionOffsetH)
        newsDescription.pinBottom(to: image.bottomAnchor, Constants.ArticleCell.newsDescriptionOffsetBottom)
        newsDescription.setHeight(Constants.ArticleCell.newsDescriptionHeight)
    }
    
    private func labelShadow(label: UILabel) {
        title.layer.shadowColor = UIColor.black.cgColor
        title.layer.shadowOpacity = Constants.ArticleCell.shadowOpacityValue
        title.layer.shadowOffset = CGSize(width: Constants.ArticleCell.shadowSize, height: Constants.ArticleCell.shadowSize)
        title.layer.shadowRadius = Constants.ArticleCell.shadowRadius
        title.layer.masksToBounds = false
    }
}
