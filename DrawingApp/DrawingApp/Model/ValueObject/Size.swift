//
//  Size.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

struct Size {
    var width: Double
    var height: Double
}

extension Size: CustomStringConvertible {
    var description: String {
        return "W\(self.width), H\(self.height)"
    }
}
