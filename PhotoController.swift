//
//  PhotoController.swift
//  photoCollection
//
//  Created by Lambda_School_Loaner_268 on 1/30/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
//

import Foundation


class PhotoController {
    var photo: [Photo] = []
    func create(myData: Data, title: String) {
        var newPhoto = Photo(imageData: myData, title: title)
        photo.append(newPhoto)
    }
    func update(photo: Photo, data: Data, string: String) {
        
    }
}
