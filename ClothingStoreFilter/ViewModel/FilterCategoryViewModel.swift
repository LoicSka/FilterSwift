//
//  FilterCategoryViewModel.swift
//  ClothingStoreFilter
//
//  Created by Loic Shyaka on 2/3/18.
//  Copyright © 2018 721 Ltd. All rights reserved.
//

import UIKit

protocol FilterCategoryViewModel {
    var categoryName: String { get }
    var isSelected: Dynamic<Bool> { get }
    
    func select()
}
