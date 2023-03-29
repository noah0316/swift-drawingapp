//
//  Frame.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

struct Frame {
    var size: Size
    var position: Position
}

extension Frame: CustomStringConvertible {
    var description: String {
        return "\(self.position), \(self.size)"
    }
}
