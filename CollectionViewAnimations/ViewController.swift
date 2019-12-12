//
//  ViewController.swift
//  CollectionViewAnimations
//
//  Created by x on 27/11/2019.
//  Copyright © 2019 x. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    

    @IBOutlet weak var ModelsCollectionView: UICollectionView!
    let modelsArr = ["1","2","3","4","5","6","7"]
    
    private let reuseIdentifier = "cell"
    let kRoomCellScaling: CGFloat = 0.6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // ModelsCollectionView.animator = ScaleAnimator()
        
        let layout = UPCarouselFlowLayout()
        layout.itemSize = CGSize(width: 250, height: 250)
        layout.scrollDirection = .horizontal

//          layout.sideItemAlpha = 1
//          layout.sideItemScale = 0.8
        layout.spacingMode = UPCarouselFlowLayoutSpacingMode.overlap(visibleOffset: 160)
        ModelsCollectionView?.setCollectionViewLayout(layout, animated: false)

    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return modelsArr.count
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ModelsCollectionViewCell
        
        cell.modelImage.image = UIImage(named: modelsArr[indexPath.row])
        
        return cell
      }
}

