//
//  Rectangle.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

final class Rectangle: ViewRepresentable {
    let id: Identifier
    var frame: Frame
    var color: Color
    var alpha: Alpha
    
    init(
        id: Identifier,
        frame: Frame,
        color: Color,
        alpha: Alpha
    ) {
        self.id = id
        self.frame = frame
        self.color = color
        self.alpha = alpha
    }
}

extension Rectangle: CustomStringConvertible {
    var description: String {
        return "\(self.id), \(self.frame), \(self.color), \(self.alpha)"
    }
}
