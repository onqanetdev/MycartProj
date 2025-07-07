//
//  TrendingProductsViewController+Extension.swift
//  MyCartProject
//
//  Created by Onqanet on 07/07/25.
//

import Foundation
import UIKit



extension TrendingProductsViewController:  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? UICollectionViewCell else {fatalError("Unable deque cell...")}
        cell.backgroundColor = .orange
        return cell
    }
    
    
}
