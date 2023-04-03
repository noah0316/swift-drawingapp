//
//  RandomViewIngridientFactory.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

final class RandomViewIngridientFactory: ViewIngridientFactory {
    private let maxPosition: Position
    private let minPosition: Position
    
    init(maxPosition: Position, minPosition: Position) {
        self.maxPosition = maxPosition
        self.minPosition = minPosition
    }
    
    func makeFrame() -> Frame? {
        let size = Size(width: 150, height: 120)
        let position = Position(
            x: Double.random(in: self.minPosition.x...self.maxPosition.x),
            y: Double.random(in: self.minPosition.y...self.maxPosition.y)
        )
        
        return Frame(size: size, position: position)
    }
    
    func makeColor() -> Color? {
        let minLightSource = Color.Constant.minLightSource
        let maxLightSource = Color.Constant.maxLightSource
        
        let red = Int.random(in: minLightSource...maxLightSource)
        let green = Int.random(in: minLightSource...maxLightSource)
        let blue = Int.random(in: minLightSource...maxLightSource)
        
        return Color(red: red, green: green, blue: blue)
    }
    
    func makeAlpha() -> Alpha? {
        return Alpha(level: Int.random(in: Alpha.Constant.minLevel...Alpha.Constant.maxLevel))
    }
}
