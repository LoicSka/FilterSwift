//
//  SelectedFilterViewModelForSelectedFilters.swift
//  ClothingStoreFilter
//
//  Created by Loic Shyaka on 2/5/18.
//  Copyright © 2018 721 Ltd. All rights reserved.
//

import UIKit

class SelectedFilterViewModelForSelectedFilters: SelectedFilterViewModel {
    var selectedFilters = Dynamic([Filter]())
    var headerTitle: String = "Filters"
    
    func addFilter(filter: Filter, from: CGPoint) {
        selectedFilters.value = [filter] + selectedFilters.value
    }
}
