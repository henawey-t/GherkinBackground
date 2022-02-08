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
            guard let currentScenario = CurrentTest.shared.currentScenario else {
                fatalError("CurrentTest.shared.currentScenario is nil")
            }
            currentScenario.background.addToPasteboard()
            XCUIApplication().buttons[currentScenario.name].tap()
        }
        
        When("I try to post to \"Expensive Therapy\"") { args, userInfo in
            guard let currentScenario = CurrentTest.shared.currentScenario else {
                fatalError("CurrentTest.shared.currentScenario is nil")
            }
            
            XCTAssertEqual(app.staticTexts["1"].label, currentScenario.background.globalAdministratorName)
            XCTAssertEqual(app.staticTexts["2"].label, currentScenario.background.blogName)
            XCTAssertEqual(app.staticTexts["3"].label, currentScenario.background.customerName)
        }

        Then("I should see \"Your article was published.\"") { args, userInfo in

        }
    }
}
