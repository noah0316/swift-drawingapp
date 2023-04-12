//
//  Position.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

struct Position: Equatable {
    let x: Double
    let y: Double
}

extension Position: CustomStringConvertible {
    var description: String {
        return "X:\(self.x), Y:\(self.y)"
    }
}
