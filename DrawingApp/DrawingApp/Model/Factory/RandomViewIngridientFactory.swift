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
    }
    
    func makeColor() -> Color {
    }
    
    func makeAlpha() -> Alpha {
    }
}
