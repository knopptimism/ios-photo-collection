//
//  PhotoDetailViewController.swift
//  photoCollection
//
//  Created by Lambda_School_Loaner_268 on 1/30/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
//

import UIKit;
hotos

class PhotoDetailViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        setTheme()
        
        
        }
    func setTheme() {
        let theme = themeHelper?.themePreference
        if theme == "Dark" {
            themeHelper?.setThemePreferenceToDark()
        
        } else {
            themeHelper!.setThemePreferenceToLightBlue()
        }
    }
    
    
    func updateViews() {
        
        guard let photo = photo else { return }
        photoDetailImage.image = UIImage(data: photo.imageData)
        textFieldOutlet.text = photo.title
        

        // Do any additional setup after loading the view.
    }
    @IBAction func savePhoto(_ sender: UIBarButtonItem) {
        if let photo = photo {
            photoController?.update(photo: photo, data: photo.imageData, string: photo.title)
            } else {
                    photoController?.create(myData: photo!.imageData, title: photo!.title)
        }
    }
    @IBAction func addPhoto(_ sender: UIButton) {
        let authorizationStatus = PHPhotoLibrary.authorizationStatus()
    }
    @IBOutlet weak var photoDetailImage: UIImageView!
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    
    var photoController: PhotoController?
    var photo: Photo?
    var themeHelper: ThemeHelper?
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

