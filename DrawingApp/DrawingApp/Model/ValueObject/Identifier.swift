//
//  Identifier.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

struct Identifier: Hashable {
    let rawValue: String
}

extension Identifier: CustomStringConvertible {
    var description: String {
        return "(\(self.rawValue))"
    }
}
