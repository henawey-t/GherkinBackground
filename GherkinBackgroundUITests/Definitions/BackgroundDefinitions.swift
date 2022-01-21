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
            AppEnvironmentSetup.shared.background.globalAdministratorName = args?.first
        }
        Given("^a blog named \"([^\\\"]*)\"$") { args, userInfo in
            AppEnvironmentSetup.shared.background.blogName = args?.first
        }
        Given("^a customer named \"([^\\\"]*)\"$") { args, userInfo in
            AppEnvironmentSetup.shared.background.customerName = args?.first
        }
    }
}
