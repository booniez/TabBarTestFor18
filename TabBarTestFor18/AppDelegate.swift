//
//  AppDelegate.swift
//  TabBarTestFor18
//
//  
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.overrideUserInterfaceStyle = .light
        
        let mainVC = MainTabBarViewController()
        window?.rootViewController = mainVC
        window?.makeKeyAndVisible()
        return true
    }

}

