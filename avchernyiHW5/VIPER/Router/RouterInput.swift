//
//  RouterInput.swift
//  avchernyiHW5
//
//  Created by Алексей on 27.12.2024.
//

import Foundation
import UIKit

// MARK: - RouterInput
protocol RouterInput: AnyObject {
    // MARK: - Functions
    func showNewScreen(url: URL?)
}
