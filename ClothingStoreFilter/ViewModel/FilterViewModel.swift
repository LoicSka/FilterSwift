//
//  FilterViewModel.swift
//  ClothingStoreFilter
//
//  Created by Loic Shyaka on 2/2/18.
//  Copyright © 2018 721 Ltd. All rights reserved.
//

import UIKit

protocol FilterViewModel {
    var color: UIColor { get }
    var Filter: Filter { get }
    var isSelected: Bool { get }
    
    func select()
}
