//
//  Identifier.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

struct Identifier: Hashable {
    private let rawValue: String
    
    init(rawValue: String) {
        self.rawValue = rawValue
    }
}

extension Identifier: CustomStringConvertible {
    var description: String {
        return "(\(self.rawValue))"
    }
}
