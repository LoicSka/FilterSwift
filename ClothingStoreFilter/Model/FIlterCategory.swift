//
//  FIlterCategory.swift
//  ClothingStoreFilter
//
//  Created by Loic Shyaka on 2/2/18.
//  Copyright © 2018 721 Ltd. All rights reserved.
//

import Foundation

class FilterCategory: NSObject {
    let identifier: String
    var name: String
    var filters: [Filter]
    
    init(name: String, identifier: String) {
        self.name = name
        self.identifier = identifier
        self.filters = []
    }
    
    func addFilter(_ filter: Filter) {
        self.filters.append(filter)
    }
}
