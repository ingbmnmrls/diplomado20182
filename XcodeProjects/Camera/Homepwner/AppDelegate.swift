//
//  AppDelegate.swift
//  Homepwner
//
//  Created by Benjamin Morales on 30/06/18.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]?) -> Bool {
    
        let itemStore = ItemStore()
        let imageStore = ImageStore()
        
        let navController = window!.rootViewController as! UINavigationController
        let itemsController = navController.topViewController as! ItemsViewController
        itemsController.itemStore = itemStore
        itemsController.imageStore = imageStore
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
       
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }


}

