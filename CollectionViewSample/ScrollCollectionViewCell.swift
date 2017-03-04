//
//  ScrollCollectionViewCell.swift
//  CollectionViewSample
//
//  Created by SuzukiShigeru on 2017/03/04.
//  Copyright © 2017年 SuzukiShigeru. All rights reserved.
//

import UIKit

class ScrollCollectionViewCell: UICollectionViewCell, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var constraintHeight: NSLayoutConstraint!
    @IBOutlet weak var constraintWidth: NSLayoutConstraint!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        constraintWidth.constant = UIScreen.main.bounds.width*3
        constraintHeight.constant = UIScreen.main.bounds.height*0.5
        scrollView.delegate = self
    }
}
