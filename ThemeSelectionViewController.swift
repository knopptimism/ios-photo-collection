//
//  ThemeSelectionViewController.swift
//  photoCollection
//
//  Created by Lambda_School_Loaner_268 on 1/30/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
//

import UIKit

class ThemeSelectionViewController: UIViewController {
    
    @IBAction func selectDarkTheme(_ sender: UIButton) {
        themeHelper?.setThemePreferenceToDark()
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectLightBlue(_ sender: Any) {
        themeHelper?.setThemePreferenceToLightBlue()
        dismiss(animated: true, completion: nil)
    }
    var themeHelper: ThemeHelper?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
