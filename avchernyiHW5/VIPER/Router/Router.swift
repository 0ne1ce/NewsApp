//
//  Router.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

final class Router: RouterInput {
    // MARK: - Properties
    weak var view : UIViewController!
    
    // MARK: - Functions
    func alertExample() {
        let alert = UIAlertController(title: "Hi", message: nil, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(okButton)
        
        view.present(alert, animated: true, completion: nil) // Вместо alert - переход на другой модуль
    }
}
