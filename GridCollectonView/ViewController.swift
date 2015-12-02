//
//  ViewController.swift
//  GridCollectonView
//
//  Created by 风起兮 on 15/12/2.
//  Copyright © 2015年 风起兮. All rights reserved.
//

import UIKit


private let ReuseIdentifier = "cell"


class ViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!

    @IBOutlet var collectionViewGridLayout: CollectionViewGridLayout!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.collectionView.collectionViewLayout = collectionViewGridLayout

    }

}

extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    
     func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return 16
    }
    
    
     func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        
        return collectionView.dequeueReusableCellWithReuseIdentifier(ReuseIdentifier, forIndexPath: indexPath)
    }
}

