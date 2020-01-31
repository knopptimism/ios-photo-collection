//
//  PhotosCollectionViewCell.swift
//  photoCollection
//
//  Created by Lambda_School_Loaner_268 on 1/30/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    var photo: Photo?
    func updateViews() {
        
        viewLabel.text = photo?.title
        
        
        
    }
    
    @IBOutlet weak var viewLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
}
