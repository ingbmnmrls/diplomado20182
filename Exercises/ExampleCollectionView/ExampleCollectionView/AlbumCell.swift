//
//  AlbumCell.swift
//  ExampleCollectionView
//
//  Created by Benjamin Morales on 21/04/18.
//  Copyright © 2018 Benjamin Morales. All rights reserved.
//

import UIKit

class AlbumCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "xxyyxx")
        iv.layer.cornerRadius = 15
        iv.layer.masksToBounds = true
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "xxyyxx"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor.white
        label.textAlignment = NSTextAlignment.center
        label.numberOfLines = 2
        return label
    }()
    
    func setupLayout() {
        addSubview(imageView)
        addSubview(titleLabel)
        imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: 100)
        titleLabel.frame = CGRect(x: 0, y: imageView.frame.height, width: frame.width, height: 15)
    }
    
}
