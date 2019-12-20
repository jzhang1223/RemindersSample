//
//  AppDelegate.swift
//  Reminders
//
//  Created by Justin Zhang on 11/16/19.
//  Copyright © 2019 Justin Zhang. All rights reserved.
//

import UIKit
import FacebookCore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

//        [[FBSDKApplicationDelegate sharedInstance] application:application
//          didFinishLaunchingWithOptions:launchOptions];
//        ApplicationDelegate.shared.application(application, open: URL., options: launchOptions)
//        BOOL handled = [[FBSDKApplicationDelegate sharedInstance] application:application
//          openURL:url
//          sourceApplication:options[UIApplicationOpenURLOptionsSourceApplicationKey]
//          annotation:options[UIApplicationOpenURLOptionsAnnotationKey]
//        ];

//        return handled;
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

