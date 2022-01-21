//
//  AppDelegate.swift
//  GherkinBackground
//
//  Created by Ahmed Henawey on 21/01/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    lazy var window: UIWindow? = UIWindow()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if isUITest {
            window?.rootViewController = BackgroundEnvironmentSetupViewController()
        } else {
            window?.rootViewController = ViewController()
        }
        window?.makeKeyAndVisible()
        return true
    }

    private var isUITest: Bool {
        return CommandLine.arguments.contains("-isUITest")
    }
}

