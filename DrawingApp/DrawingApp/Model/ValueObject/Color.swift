//
//  Color.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

struct Color {
    let red: Int
    let green: Int
    let blue: Int
    
    init?(red: Int, green: Int, blue: Int) {
        guard [red, green, blue].allSatisfy({ lightSource in
            (Color.Constant.minLightSource...Color.Constant.maxLightSource).contains(lightSource)
        })
        else { return nil }
        
        self.red = red
        self.green = green
        self.blue = blue
    }
}

extension Color: CustomStringConvertible {
    var description: String {
        return "R:\(self.red), G:\(self.green), B:\(self.blue)"
    }
}

extension Color {
    enum Constant {
        static let minLightSource = 0
        static let maxLightSource = 255
    }
}
