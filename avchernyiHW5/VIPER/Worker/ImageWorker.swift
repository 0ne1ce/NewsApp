//
//  ImageWorker.swift
//  avchernyiHW5
//
//  Created by Алексей on 28.12.2024.
//

import Foundation
import UIKit

// MARK: - ImageWorker
final class ImageWorker {
    // MARK: - Constants
    static let shared = ImageWorker()
    
    // MARK: - Initialization
    private init() {}
    
    // MARK: - Public functions
    func loadImage(_ imageURL: ImageContainer, completion: @escaping (UIImage?) -> Void) {
        DispatchQueue.global().async {
            guard let url = imageURL.url,
                  let data = try? Data(contentsOf: url),
                  let image = UIImage(data: data) else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            DispatchQueue.main.async {
                completion(image)
            }
        }
    }
}
