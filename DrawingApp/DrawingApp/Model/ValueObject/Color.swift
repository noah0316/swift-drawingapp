//
//  Color.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

struct Color {
    var red: Int
    var green: Int
    var blue: Int
}

extension Color: CustomStringConvertible {
    var description: String {
        return "R:\(self.red), G:\(self.green), B:\(self.blue)"
    }
}
