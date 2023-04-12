//
//  Frame.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

struct Frame {
    let size: Size
    let position: Position
    
    init?(size: Size?, position: Position) {
        guard let size
        else { return nil }
        
        self.size = size
        self.position = position
    }
}

extension Frame: CustomStringConvertible {
    var description: String {
        return "\(self.position), \(self.size)"
    }
}
