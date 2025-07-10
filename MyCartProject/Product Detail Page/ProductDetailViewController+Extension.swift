//
//  ProductDetailViewController+Extension.swift
//  MyCartProject
//
//  Created by Onqanet on 09/07/25.
//

import Foundation
import UIKit



extension ProductDetailViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return allTrendingProducts.count
        case 1:
            return productDetails.count
        case 2:
            return 1
        default:
            return 1
        }
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        3
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductBannerCollectionViewCell.cellIdentifier, for: indexPath) as?
                    ProductBannerCollectionViewCell else {fatalError("Unable deque cell...")}
            cell.cellData = allTrendingProducts[indexPath.row]
            //cell.cardView.backgroundColor = .white
            cell.backgroundColor = .clear
            return cell
            
        case 1:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductDetailsCollectionViewCell.cellIdentifier, for: indexPath) as?
                    ProductDetailsCollectionViewCell else {fatalError("Unable deque cell...")}
            cell.cellData = productDetails[indexPath.row]
            //cell.cardView.backgroundColor = .white
            cell.backgroundColor = .clear
            return cell
            
            
        case 2:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProductSegmentCollectionViewCell.cellIdentifier, for: indexPath) as?
                    ProductSegmentCollectionViewCell else {fatalError("Unable deque cell...")}
//            cell.cellData = productDetails[indexPath.row]
            //cell.cardView.backgroundColor = .white
            cell.backgroundColor = .clear
            return cell
            
        default:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? UICollectionViewCell else {fatalError("Unable deque cell...")}
            cell.backgroundColor = .orange
            return cell
        }
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //navigationController?.pushViewController(ProductDetailViewController(), animated: true)
    }
    
    
    

    
}


