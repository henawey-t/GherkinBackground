//
//  BackgroundEnvironment.swift
//  GherkinBackground
//
//  Created by Ahmed Henawey on 21/01/2022.
//

import Foundation
import class UIKit.UIPasteboard

struct BackgroundEnvironment: Codable, PasteboardTemporaryStorage {
    var globalAdministratorName: String?
    var blogName: String?
    var customerName: String?
}

protocol PasteboardTemporaryStorage: Codable {
    associatedtype `Type`: Decodable = Self
    static var identifier: String { get }
    static func loadFromPasteboard() -> `Type`
    func setToPasteboard()
}

extension PasteboardTemporaryStorage {
    static var identifier: String { String(describing: self) }

    static func loadFromPasteboard() -> `Type` {
        let backgroundValue = UIPasteboard.general.items.first { dict in
            return dict.keys.first == Self.identifier
        }
        return try! JSONDecoder().decode(`Type`.self, from: backgroundValue![Self.identifier] as! Data)
    }

    func setToPasteboard() {
        let data = try! JSONEncoder().encode(self)

        let pasteboard = UIPasteboard.general
        pasteboard.addItems([[Self.identifier: data]])
    }
}
