//
//  AppDelegate.swift
//  TestApplication
//
//  Created by akuraru on 2019/12/01.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import AKUStoreManager

protocol AppDelegate {
    var directoryManager: DirectoryManager { get set }
}

#if TEST
@UIApplicationMain
class AppDelegateTest: UIResponder, UIApplicationDelegate, AppDelegate {
    var directoryManager: DirectoryManager = DirectoryManagerTester()
}
#else
@UIApplicationMain
class AppDelegateImp: UIResponder, UIApplicationDelegate, AppDelegate {
    var directoryManager: DirectoryManager = DirectoryManagerImp()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
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
#endif
