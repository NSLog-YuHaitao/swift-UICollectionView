//
//  picCollectionViewCell.swift
//  swift-UICollectionView
//
//  Created by 尊驾 on 16/11/29.
//  Copyright © 2016年 尊驾. All rights reserved.
//

import UIKit


class picCollectionViewCell: UICollectionViewCell {
    
    var iv:UIImageView?

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.createIv()
        
    }
    
    public func createIv() -> Void {
        iv = UIImageView.init(frame:CGRect.init(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        self.addSubview(iv!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
