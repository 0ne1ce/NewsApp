//
//  NewsBuisnessLogic.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

protocol NewsBuisnessLogic: AnyObject {
    func loadFreshNews()
    func loadMoreNews()
}