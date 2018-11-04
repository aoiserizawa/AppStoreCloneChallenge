//
//  CollectionViewCell.swift
//  Appstore Clone Challenge
//
//  Created by alvin joseph valdez on 04/11/2018.
//  Copyright © 2018 alvin joseph valdez. All rights reserved.
//

import Foundation
import UIKit

public final class CollectionViewCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var innerCollectionView: UICollectionView!
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        let nibCell = UINib(nibName: "InnerCollectionViewCell", bundle: nil)
        self.innerCollectionView.register(nibCell, forCellWithReuseIdentifier: "InnersCell")
        
        self.innerCollectionView.dataSource = self
        self.innerCollectionView.delegate = self
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        
        layout.minimumInteritemSpacing = 5.0
        layout.minimumLineSpacing = 5.0
        layout.scrollDirection = UICollectionView.ScrollDirection.horizontal
        
        self.innerCollectionView.collectionViewLayout = layout
        
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InnersCell", for: indexPath) as! InnerCollectionViewCell
        
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width / 3, height: self.frame.height)
    }
}
