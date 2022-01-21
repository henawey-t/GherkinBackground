//
//  AppEnvironmentSetup.swift
//  GherkinBackground
//
//  Created by Ahmed Henawey on 21/01/2022.
//

import Foundation

class AppEnvironmentSetup {
    var background = BackgroundEnvironment()
    static let shared = AppEnvironmentSetup()

    private init() {}
}
