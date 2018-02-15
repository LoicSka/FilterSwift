//
//  FiltersContainerViewModelForCategory.swift
//  ClothingStoreFilter
//
//  Created by Loic Shyaka on 2/5/18.
//  Copyright © 2018 721 Ltd. All rights reserved.
//

import Foundation

class FiltersContainerViewModelForCategory: FiltersContainerViewModel {
    
    var category: FilterCategory!
    
    func selectFiltersDispayer() -> [FilterViewModel] {
        category.filters.map { FilterViewModel( }
    }
    
    
}
