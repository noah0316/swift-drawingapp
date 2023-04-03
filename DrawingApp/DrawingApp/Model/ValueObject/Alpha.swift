//
//  Alpha.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

struct Alpha {
    var level: Int
    
    init?(level: Int) {
        guard level >= Alpha.Constant.minLevel && level <= Alpha.Constant.maxLevel
        else { return nil }
        
        self.level = level
    }
}

extension Alpha: CustomStringConvertible {
    var description: String {
        return "Alpha: \(self.level)"
    }
}

extension Alpha {
    enum Constant {
        static let maxLevel = 10
        static let minLevel = 0
    }
}
