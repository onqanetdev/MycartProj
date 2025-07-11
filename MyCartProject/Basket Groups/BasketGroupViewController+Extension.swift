//
//  BasketGroupViewController+Extension.swift
//  MyCartProject
//
//  Created by Onqanet on 11/07/25.
//

import Foundation
import UIKit




extension BasketGroupViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurantListMockData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BasketGroupCollectionViewCell.cellIdentifier, for: indexPath) as? BasketGroupCollectionViewCell else {fatalError("Unable deque cell...")}
            cell.cellData = restaurantListMockData[indexPath.row]
         return cell
    }
    
    
    
    
}





