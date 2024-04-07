//
//  DataItem.swift
//  Codable
//
//  Created by Praval Gautam on 05/04/24.
//

import Foundation
import SwiftData

@Model
class DataItem: Identifiable {
    var id: String
    var image: String
    var title: String
    var lessons: Int
 
    
    init(title: String, image: String, lessons: Int ) {
        self.id = UUID().uuidString
        self.title = title
        self.image = image
        self.lessons = lessons

    }
}
