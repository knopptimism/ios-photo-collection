//
//  ThemeHelper.swift
//  photoCollection
//
//  Created by Lambda_School_Loaner_268 on 1/30/20.
//  Copyright © 2020 Jeremiah. All rights reserved.
//

import Foundation

class ThemeHelper {
    var themePreferenceKey: String?
    
    var themePreference: String?  {
        guard themePreferenceKey != nil else {return nil}
        
        return UserDefaults.standard.string(forKey: themePreferenceKey!)
        
    }
    func setThemePreferenceToDark() {
        UserDefaults.standard.set("Dark", forKey: themePreferenceKey!)
    }
    func setThemePreferenceToLightBlue() {
        UserDefaults.standard.set("Light Blue", forKey: themePreferenceKey!)
    }
    init() {
        if themePreference == nil {
            setThemePreferenceToDark()
        }
    }
}
