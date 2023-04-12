//
//  Size.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

struct Size {
    let width: Double
    let height: Double
    
    init?(width: Double, height: Double) {
        guard [width, height].allSatisfy({ element in
            element >= 0
        })
        else { return nil }
        
        self.width = width
        self.height = height
    }
}

extension Size: CustomStringConvertible {
    var description: String {
        return "W\(self.width), H\(self.height)"
    }
}
