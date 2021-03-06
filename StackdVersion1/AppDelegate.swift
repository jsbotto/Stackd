//
//  AppDelegate.swift
//  StackdVersion1
//
//  Created by Sky Xu on 3/29/18.
//  Copyright © 2018 Sky Xu. All rights reserved.
//

import UIKit
import Foundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let defaults = UserDefaults.standard
        let initialViewController: UIViewController
        let onboarded = defaults.bool(forKey: "saw_onboarding")
        
        if onboarded{
            // MARK: Instantiate with custom NavController here
            initialViewController = UIStoryboard.initialViewController(for: .main)
        } else {
            initialViewController = storyboard.instantiateViewController(withIdentifier: "onboardingVC") as! OnboardingViewController
        }
        window?.rootViewController = initialViewController
        window?.makeKeyAndVisible()
        
        UIApplication.shared.statusBarStyle = .lightContent
        UITabBar.appearance().unselectedItemTintColor = UIColor(red:0.73, green:0.73, blue:0.73, alpha:1.0)
        
        return true
    }

    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
//        NotificationCenter.default.post(name: .enterForeground, object: nil)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

