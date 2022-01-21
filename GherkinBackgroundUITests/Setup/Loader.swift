//
//  Loader.swift
//  GherkinBackgroundUITests
//
//  Created by Ahmed Henawey on 21/01/2022.
//

import Cucumberish

@objcMembers
class Loader: NSObject {
    func setup() {
        beforeStart {
            BackgroundDefinitions.stepsDefinition()
            DrBillPostsToHisOwnBlogDefinitions.stepsDefinition()
        }

        before { scenario in
            let app = XCUIApplication()
            app.launchArguments = ["-isUITest"]
            app.launch()
        }

        guard let cucumberish = Cucumberish.instance() else {
            fatalError("Cannot load Cucumberish instance")
        }

        cucumberish.parserFeatures(
            inDirectory: "Features",
            from: Bundle(for: Self.self),
            includeTags: nil,
            excludeTags: nil)

        cucumberish.prettyNamesAllowed = true
        cucumberish.beginExecution()
    }
}
