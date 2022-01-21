//
//  DrBillPostsToHisOwnBlogDefinitions.swift
//  GherkinBackgroundUITests
//
//  Created by Ahmed Henawey on 21/01/2022.
//

import XCTest
import Cucumberish

final class DrBillPostsToHisOwnBlogDefinitions: XCTestCase {

    static func stepsDefinition() {
        let app = XCUIApplication()

        Given("I am logged in as Dr. Bill") { args, userInfo in
            AppEnvironmentSetup.shared.background.setToPasteboard()
            app.buttons["scenario1"].tap()
        }

        When("I try to post to \"Expensive Therapy\"") { args, userInfo in
            XCTAssertEqual(app.staticTexts["1"].label, AppEnvironmentSetup.shared.background.globalAdministratorName)
            XCTAssertEqual(app.staticTexts["2"].label, AppEnvironmentSetup.shared.background.blogName)
            XCTAssertEqual(app.staticTexts["3"].label, AppEnvironmentSetup.shared.background.customerName)
        }

        Then("I should see \"Your article was published.\"") { args, userInfo in

        }
    }
}
