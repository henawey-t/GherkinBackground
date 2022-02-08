//
//  BackgroundDefinitions.swift
//  GherkinBackgroundUITests
//
//  Created by Ahmed Henawey on 21/01/2022.
//

import Cucumberish

final class BackgroundDefinitions {
    static func stepsDefinition(action: DrBillPostsToHisOwnBlog) {
        Given("^a global administrator named \"([^\\\"]*)\"$") { args, userInfo in
            action.a_global_administrator_named(name: args!.first!)
        }
        Given("^a blog named \"([^\\\"]*)\"$") { args, userInfo in
            action.a_blog_named(name: args!.first!)
        }
        Given("^a customer named \"([^\\\"]*)\"$") { args, userInfo in
            action.a_customer_named(name: args!.first!)
        }
    }
}
protocol DrBillPostsToHisOwnBlog {
    func a_global_administrator_named(name: String)
    func a_blog_named(name: String)
    func a_customer_named(name: String)
}
