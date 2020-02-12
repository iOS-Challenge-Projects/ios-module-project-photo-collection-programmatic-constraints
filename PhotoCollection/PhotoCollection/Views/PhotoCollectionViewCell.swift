//
//  PhotoCollectionViewCell.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {

    var photo: Photo?
    
    func setUpSubviews() {
        
        
        //MARK: - imageView
        
        //Creating image view to display photo.imageData
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        //Use to resize image
        imageView.contentMode = .scaleAspectFit
        addSubview(imageView)
        
        //Image view constraints
        
        //top
        NSLayoutConstraint(item: imageView,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .top,
                           multiplier: 1,
            constant: 4).isActive = true
        
        //leading
        NSLayoutConstraint(item: imageView,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .leading,
                           multiplier: 1,
            constant: 4).isActive = true
        
        //trailing
        NSLayoutConstraint(item: imageView,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: self,
                           attribute: .trailing,
                           multiplier: 1,
            constant: -4).isActive = true
        
        //height
        NSLayoutConstraint(item: imageView,
                              attribute: .height,
                              relatedBy: .equal,
                              toItem: imageView,
                              attribute: .width,
                              multiplier: 1,
               constant: 0).isActive = true
           
        
        //MARK: - Label
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        addSubview(label)
        
        label
        
    }
}
