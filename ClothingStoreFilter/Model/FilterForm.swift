//
//  FilterForm.swift
//  ClothingStoreFilter
//
//  Created by Loic Shyaka on 2/2/18.
//  Copyright © 2018 721 Ltd. All rights reserved.
//

import Foundation

enum FilterFormState {
    case Filtering
    case Done
    case Started
}

class FilterForm: NSObject {
    var identifier: String
    var activeFilters: [Filter]
    var filterCategories: [FilterCategory]
    var state: FilterFormState = .Started
    
    init(identifier: String, filterCategories: [FilterCategory]) {
        self.identifier = identifier
        self.filterCategories = filterCategories
        self.activeFilters = []
    }
    
    func addFilter(_ filter: Filter) {
        activeFilters.append(filter)
    }
    
    
    
}
