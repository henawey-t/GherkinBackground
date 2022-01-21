//
//  DrBillTriesToPostToSomebodyElseSBlogAndFails.swift
//  GherkinBackgroundUITests
//
//  Created by Ahmed Henawey on 22/01/2022.
//

import XCTest
import Cucumberish

final class DrBillTriesToPostToSomebodyElseSBlogAndFails: XCTestCase {

    static func stepsDefinition() {
        let app = XCUIApplication()

        When("I try to post to \"Greg's anti-tax rants\"") { args, userInfo in
        }

        Then("I should see \"Hey! That's not your blog!\"") { args, userInfo in
        }
    }
}

