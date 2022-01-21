//
//  BackgroundDefinitions.swift
//  GherkinBackgroundUITests
//
//  Created by Ahmed Henawey on 21/01/2022.
//

import Cucumberish

final class BackgroundDefinitions {    
    static func stepsDefinition() {
        Given("^a global administrator named \"([^\\\"]*)\"$") { args, userInfo in
            CurrentTest.shared.currentScenario?.background.globalAdministratorName = args?.first
        }
        Given("^a blog named \"([^\\\"]*)\"$") { args, userInfo in
            CurrentTest.shared.currentScenario?.background.blogName = args?.first
        }
        Given("^a customer named \"([^\\\"]*)\"$") { args, userInfo in
            CurrentTest.shared.currentScenario?.background.customerName = args?.first
        }

        Given("I am logged in as Dr. Bill") { args, userInfo in
            guard let currentScenario = CurrentTest.shared.currentScenario else {
                fatalError("CurrentTest.shared.currentScenario is nil")
            }
            currentScenario.background.setToPasteboard()
            XCUIApplication().buttons[currentScenario.name].tap()
        }
    }
}
