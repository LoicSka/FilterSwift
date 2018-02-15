//
//  FilterPickerView.swift
//  ClothingStoreFilter
//
//  Created by Loic Shyaka on 2/3/18.
//  Copyright © 2018 721 Ltd. All rights reserved.
//

import UIKit

class FilterPickerView: UIView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var filterCategories: [FilterCategory] = [] {
        didSet {
            collectionView.reloadData()
        }
    }

    var viewModel: FilterPickerViewModel? {
        didSet {
            fillUI()
        }
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.showsHorizontalScrollIndicator = false
        cv.dataSource = self
        cv.delegate = self
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        styleUI()
    }
    
    func setupCollectionView() {
        collectionView.register(TagCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filterCategories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! TagCell
        cell.cellTag = tags[(indexPath as NSIndexPath).item]
        return cell
    }

    fileprivate func fillUI() {
        guard let viewModel = viewModel else {
            return
        }
        
        self.filterCategories = viewModel.categories
        
    }
    
    func styleUI() {
        
    }

}
