//
//  CurrentTest.swift
//  GherkinBackground
//
//  Created by Ahmed Henawey on 21/01/2022.
//

import Foundation

final class CurrentTest {
    static var shared = CurrentTest()

    private(set) var currentScenario: Scenario?

    func create(scenario name: String) {
        currentScenario = Scenario(name: name, background: BackgroundEnvironment())
    }

    func reset() {
        currentScenario = nil
    }
}

struct Scenario {
    let name: String
    let background: BackgroundEnvironment
}
