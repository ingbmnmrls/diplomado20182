//
//  Models.swift
//  ExampleCollectionView
//
//  Created by Benjamin Morales on 21/04/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit

class Category: NSObject {
    var name: String?
    var albums: [Album]?
    
    static func samples() -> [Category] {
        let bestNewAlbums = Category()
        bestNewAlbums.name = "Los mejores"
        return [bestNewAlbums]
    }
    
}

class Album: NSObject {
    var name: String?
    var category: String?
    var image: String?
}
