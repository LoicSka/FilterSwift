//
//  Filter.swift
//  ClothingStoreFilter
//
//  Created by Loic Shyaka on 2/2/18.
//  Copyright © 2018 721 Ltd. All rights reserved.
//

import Foundation

class Filter: NSObject {
    let identifier: String
    let category: String
    var value: String
    
    
    init(value: String, category: String, identifier: String) {
        self.value = value
        self.identifier = identifier
        self.category = category
    }
}
