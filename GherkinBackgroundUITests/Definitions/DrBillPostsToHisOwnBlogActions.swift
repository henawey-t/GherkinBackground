//
//  DrBillPostsToHisOwnBlogActions.swift
//  GherkinBackgroundUITests
//
//  Created by Ahmed Henawey on 08/02/2022.
//

import Foundation

final class DrBillPostsToHisOwnBlogActions: DrBillPostsToHisOwnBlog {
    func a_global_administrator_named(name: String) {
        CurrentTest.shared.currentScenario?.background.globalAdministratorName = name
    }

    func a_blog_named(name: String) {
        CurrentTest.shared.currentScenario?.background.blogName = name
    }

    func a_customer_named(name: String) {
        CurrentTest.shared.currentScenario?.background.customerName = name
    }
}
