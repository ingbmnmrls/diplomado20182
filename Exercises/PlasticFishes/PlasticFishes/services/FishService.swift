//
//  FishService.swift
//  PlasticFishes
//
//  Created by Benjamin Morales on 06/04/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import Foundation

class FishService {
    let baseURL = URL(string: "https://plasticfishes.herokuapp.com")!
    let session = URLSession.shared
    
    static let shared = FishService()
    func all(success: (([Fish]) -> Void)) {
        let url = baseURL.appendingPathComponent("api/fishes")
        
    }
}
