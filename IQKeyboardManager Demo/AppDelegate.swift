//
//  AppDelegate.swift
//  IQKeyboardManager Demo
//
//  Created by Adwait Barkale on 12/11/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit
import IQKeyboardManager

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        //IQKeyboardManager
        IQKeyboardManager.shared().isEnabled = true //Activates
        IQKeyboardManager.shared().enableDebugging = true //Get Debugging msgs printed
        IQKeyboardManager.shared().isEnableAutoToolbar = true //Add's Toolbar (Done Button)
        IQKeyboardManager.shared().overrideKeyboardAppearance = true
        //IQKeyboardManager.shared().keyboardAppearance = .light //Dark or Light Keyboard Color
        IQKeyboardManager.shared().keyboardDistanceFromTextField = 100.0 //Distance between Keyboard and Abouve or tapped textfield
        IQKeyboardManager.shared().toolbarTintColor = .black //TintColor of text on toolbar
        IQKeyboardManager.shared().toolbarBarTintColor = .white //Toolbar background color
        IQKeyboardManager.shared().toolbarDoneBarButtonItemText = "Dismiss" //Change Done Button Text
        IQKeyboardManager.shared().toolbarDoneBarButtonItemImage = UIImage(named: "") //Apply Image on Done Button
        IQKeyboardManager.shared().shouldShowToolbarPlaceholder = true // Textfield Placeholder on ToolBar
        IQKeyboardManager.shared().placeholderFont = UIFont(name: "Times New Roman", size: 20) //Placeholder Font and FontSize
        IQKeyboardManager.shared().shouldResignOnTouchOutside = true //Dismiss Keyboard when User Taps outside
        IQKeyboardManager.shared().shouldPlayInputClicks = true //Makes Sounds when click on Done/Next/Previous
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

