//
//  BackgroundEnvironment.swift
//  GherkinBackground
//
//  Created by Ahmed Henawey on 21/01/2022.
//

import Foundation
import class UIKit.UIPasteboard

final class BackgroundEnvironment: Codable, PasteboardTemporaryStorage {
    var globalAdministratorName: String?
    var blogName: String?
    var customerName: String?
}

protocol PasteboardTemporaryStorage: Codable {
    associatedtype `Type`: Decodable = Self
    static var identifier: String { get }
    static func loadFromPasteboard() -> `Type`
    func addToPasteboard()
}

extension PasteboardTemporaryStorage {
    static var identifier: String { String(describing: self) }

    static func loadFromPasteboard() -> `Type` {
        let pasteboard = UIPasteboard.general
        let backgroundValue = pasteboard.data(forPasteboardType: Self.identifier)
        pasteboard.setData(Data(), forPasteboardType: Self.identifier)
        return try! JSONDecoder().decode(`Type`.self, from: backgroundValue!)
    }

    func addToPasteboard() {
        let data = try! JSONEncoder().encode(self)

        let pasteboard = UIPasteboard.general
        pasteboard.setData(data, forPasteboardType: Self.identifier)
    }
}
