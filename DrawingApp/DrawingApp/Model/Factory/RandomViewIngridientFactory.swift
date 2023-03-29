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
    private static var uniqueIdentifiers = Unique<Identifier>()
    
    init(maxPosition: Position, minPosition: Position) {
        self.maxPosition = maxPosition
        self.minPosition = minPosition
    }
    
    func makeID() -> Identifier {
        let minToken = 100
        let maxToken = 999
        
        while true {
            let firstToken = Int.random(in: minToken...maxToken)
            let secondToken = Int.random(in: minToken...maxToken)
            let thirdToken = Int.random(in: minToken...maxToken)
            let identifierCandidate = Identifier(rawValue: "\(firstToken)-\(secondToken)-\(thirdToken)")
            
            if RandomViewIngridientFactory.uniqueIdentifiers.isUnique(identifierCandidate) {
                RandomViewIngridientFactory.uniqueIdentifiers.insert(identifierCandidate)
                return identifierCandidate
            }
        }
    }
    
    func makeFrame() -> Frame {
        let size = Size(width: 150, height: 120)
        let position = Position(
            x: Double.random(in: self.minPosition.x...self.maxPosition.x),
            y: Double.random(in: self.minPosition.y...self.maxPosition.y)
        )
        
        return Frame(size: size, position: position)
    }
    
    func makeColor() -> Color {
        let minLightSource = 0
        let maxLightSource = 255
        
        let red = Int.random(in: minLightSource...maxLightSource)
        let green = Int.random(in: minLightSource...maxLightSource)
        let blue = Int.random(in: minLightSource...maxLightSource)
        
        return Color(red: red, green: green, blue: blue)
    }
    
    func makeAlpha() -> Alpha {
        let minAlphaLevel = 0
        let maxAlphaLevel = 10
        
        return Alpha(level: Int.random(in: minAlphaLevel...maxAlphaLevel))
    }
}
