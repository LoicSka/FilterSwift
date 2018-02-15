//
//  InMemoryFilterDtore.swift
//  ClothingStoreFilter
//
//  Created by Loic Shyaka on 2/3/18.
//  Copyright © 2018 721 Ltd. All rights reserved.
//

import UIKit

class InMemoryCategoriesStore: NSObject, FilterCategoryStore {
    fileprivate var allfiltercCategories: [FilterCategory] = []
    
    func allFilterCategories() -> [FilterCategory] {
        return allfiltercCategories
    }
    
    static let shared = InMemoryCategoriesStore()
    
    func addColorFilterCategory() {
        let colorFilterCategory = FilterCategory(name: "COLOR", identifier: UUID().uuidString, type: .Color)
        
        let colorFilters = [
            Filter(value: "Blue", bgColor: UIColor(red: 52.0 / 255.0, green: 152.0 / 255.0, blue: 219.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Purple", bgColor: UIColor(red: 155.0 / 255.0, green: 89.0 / 255.0, blue: 182.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Green", bgColor: UIColor(red: 26.0 / 255.0, green: 188.0 / 255.0, blue: 156.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Dark Green", bgColor: UIColor(red: 22.0 / 255.0, green: 160.0 / 255.0, blue: 133.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Lime", bgColor: UIColor(red: 36.0 / 255.0, green: 188.0 / 255.0, blue: 156.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Yellow", bgColor: UIColor(red: 241.0 / 255.0, green: 196.0 / 255.0, blue: 15.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Pink", bgColor: UIColor(red: 253.0 / 255.0, green: 121.0 / 255.0, blue: 168.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Mint", bgColor: UIColor(red: 72.0 / 255.0, green: 219.0 / 255.0, blue: 251.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Orange", bgColor: UIColor(red: 230.0 / 255.0, green: 126.0 / 255.0, blue: 34.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Sky blue", bgColor: UIColor(red: 30.0 / 255.0, green: 144.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Burgundy", bgColor: UIColor(red: 109.0 / 255.0, green: 33.0 / 255.0, blue: 79.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Black", bgColor: UIColor.black, category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Gray", bgColor: UIColor(red: 83.0 / 255.0, green: 92.0 / 255.0, blue: 104.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Red", bgColor: UIColor(red: 235.0 / 255.0, green: 77.0 / 255.0, blue: 75.0 / 255.0, alpha: 1.0), category: colorFilterCategory, identifier: UUID().uuidString),
        ]
        
        for colorFilter in colorFilters {
            colorFilterCategory.addFilter(colorFilter)
        }
        
        allfiltercCategories.append(colorFilterCategory)
    }
    
    func addSizeFilterCategory() {
        let sizeFilterCategory = FilterCategory(name: "SIZE", identifier: UUID().uuidString, type: .Size)
        
        let sizeFilters = [
            Filter(value: "Small", bgColor: UIColor(red: 116.0 / 255.0, green: 125.0 / 255.0, blue: 140.0 / 255.0, alpha: 1.0), category: sizeFilterCategory, identifier: UUID().uuidString, title: "S"),
            Filter(value: "Medium", bgColor: UIColor(red: 116.0 / 255.0, green: 125.0 / 255.0, blue: 140.0 / 255.0, alpha: 1.0), category: sizeFilterCategory, identifier: UUID().uuidString, title: "M"),
            Filter(value: "Large", bgColor: UIColor(red: 116.0 / 255.0, green: 125.0 / 255.0, blue: 140.0 / 255.0, alpha: 1.0), category: sizeFilterCategory, identifier: UUID().uuidString, title: "L"),
            Filter(value: "Extra large", bgColor: UIColor(red: 116.0 / 255.0, green: 125.0 / 255.0, blue: 140.0 / 255.0, alpha: 1.0), category: sizeFilterCategory, identifier: UUID().uuidString, title: "XL"),
        ]
        
        for sizeFilter in sizeFilters {
            sizeFilterCategory.addFilter(sizeFilter)
        }
        
        allfiltercCategories.append(sizeFilterCategory)
    }
    
    func addCategoryFilterCategory() {
        let categoryFilterCategory = FilterCategory(name: "CATEGORY", identifier: UUID().uuidString, type: .Category)
        
        let categoryFilters = [
            Filter(value: "Sweatshirts", bgColor: UIColor(red: 116.0 / 255.0, green: 125.0 / 255.0, blue: 140.0 / 255.0, alpha: 1.0), category: categoryFilterCategory, identifier: UUID().uuidString),
            Filter(value: "T-Shirts", bgColor: UIColor(red: 116.0 / 255.0, green: 125.0 / 255.0, blue: 140.0 / 255.0, alpha: 1.0), category: categoryFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Hoodies", bgColor: UIColor(red: 116.0 / 255.0, green: 125.0 / 255.0, blue: 140.0 / 255.0, alpha: 1.0), category: categoryFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Jackets", bgColor: UIColor(red: 116.0 / 255.0, green: 125.0 / 255.0, blue: 140.0 / 255.0, alpha: 1.0), category: categoryFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Pants", bgColor: UIColor(red: 116.0 / 255.0, green: 125.0 / 255.0, blue: 140.0 / 255.0, alpha: 1.0), category: categoryFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Shorts", bgColor: UIColor(red: 116.0 / 255.0, green: 125.0 / 255.0, blue: 140.0 / 255.0, alpha: 1.0), category: categoryFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Dresses", bgColor: UIColor(red: 116.0 / 255.0, green: 125.0 / 255.0, blue: 140.0 / 255.0, alpha: 1.0), category: categoryFilterCategory, identifier: UUID().uuidString),
            Filter(value: "Skirts", bgColor: UIColor(red: 116.0 / 255.0, green: 125.0 / 255.0, blue: 140.0 / 255.0, alpha: 1.0), category: categoryFilterCategory, identifier: UUID().uuidString),
            ]
        
        for categoryFilter in categoryFilters {
            categoryFilterCategory.addFilter(categoryFilter)
        }
        
        allfiltercCategories.append(categoryFilterCategory)
    }
    
    func addPriceFilterCategory() {
        let priceFilterCategory = FilterCategory(name: "PRICE", identifier: UUID().uuidString, type: .Price)
        allfiltercCategories.append(priceFilterCategory)
    }
    
    fileprivate override init() {
        super.init()
        addColorFilterCategory()
        addSizeFilterCategory()
        addCategoryFilterCategory()
        addPriceFilterCategory()
    }
    
}
