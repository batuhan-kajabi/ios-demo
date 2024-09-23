//
//  mbanativeApp.swift
//  mbanative
//
//  Created by Batuhan on 18.09.2024.
//

import SwiftUI
import UIKit

//class AppDelegate: NSObject, UIApplicationDelegate {
  //  var window: UIWindow?
    
    //func application(_ application: UIApplication,
      //               didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        //return true
    //}
//}

@main
struct mbanativeApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
