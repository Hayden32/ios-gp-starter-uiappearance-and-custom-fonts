//
//  ApperenceHelper.swift
//  Lambda Messages Theming
//
//  Created by Hayden Hastings on 5/20/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

// UIAppearance is a "proxy" for some objects.

enum AppearanceHelper {
    // RGB Values run 0-255
    static let lambdaRed = UIColor(red: 212 / 255, green: 87 / 255, blue: 80 / 255, alpha: 1.0)
    static let backgroundGrey = UIColor(red: 45 / 255, green: 45 / 255, blue: 45 / 255 , alpha: 1.0)
    
    static func typerighterFont(with textStyle: UIFont.TextStyle, pointSize: CGFloat) -> UIFont {
        let font = UIFont(name: "RM Typerighter medium", size: pointSize)!
        
        let dynamicFont = UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
        
        return dynamicFont
    }
    
    static func setDarkAppearance() {
        
        // UIAppearance can only get you so far.
        
        // Acts as an instance of 'UINavitgationBar', but really refers to any navigation bar initialized agter this runs.
        UINavigationBar.appearance().barTintColor = backgroundGrey
        UINavigationBar.appearance().tintColor = lambdaRed
        UISegmentedControl.appearance().tintColor = lambdaRed
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UITextField.appearance().tintColor = lambdaRed
        UITextView.appearance().tintColor = lambdaRed
    }
    
    static func style(button: UIButton) {
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = lambdaRed
        button.layer.cornerRadius = 8
    }
}
