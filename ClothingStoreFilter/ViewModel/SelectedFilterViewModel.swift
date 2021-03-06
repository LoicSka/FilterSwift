//
//  SelectedFilterViewModel.swift
//  ClothingStoreFilter
//
//  Created by Loic Shyaka on 2/2/18.
//  Copyright © 2018 721 Ltd. All rights reserved.
//

import UIKit

protocol SelectedFilterViewModel {
    var headerTitle: String { get }
    func addFilter(filter: Filter, from: CGPoint)
}
