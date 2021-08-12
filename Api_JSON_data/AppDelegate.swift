//
//  AppDelegate.swift
//  Api_JSON_data
//
//  Created by Sudharsan Ravikumar on 11/08/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        travelToMars(shouldTravel: false)
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
    
    func travelToMars(shouldTravel: Bool) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if shouldTravel {
            let marsRootPage = mainStoryboard.instantiateViewController(identifier: "marsRootPage")
            let nav = UINavigationController(rootViewController: marsRootPage)
            self.window?.rootViewController = nav
            self.window?.makeKeyAndVisible()
            print("done")
        } else {
            let logInScreen = mainStoryboard.instantiateViewController(identifier: "ViewController")
            let nav = UINavigationController(rootViewController: logInScreen)
            self.window?.rootViewController = logInScreen
            self.window?.makeKeyAndVisible()
        }
        
    }


}

