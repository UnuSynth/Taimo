//
//  Item.swift
//  Taimo
//
//  Created by Amantay Abdyshev on 28/9/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
