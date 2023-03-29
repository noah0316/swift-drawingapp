//
//  RandomIdentifierFactory.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

final class RandomIdentifierFactory: IdentifierFactory {
    private static var uniqueIdentifiers = Unique<Identifier>()
    
    func makeIdentifier() -> Identifier {
        let minToken = 100
        let maxToken = 999
        
        while true {
            let firstToken = Int.random(in: minToken...maxToken)
            let secondToken = Int.random(in: minToken...maxToken)
            let thirdToken = Int.random(in: minToken...maxToken)
            let identifierCandidate = Identifier(rawValue: "\(firstToken)-\(secondToken)-\(thirdToken)")
            
            if RandomIdentifierFactory.uniqueIdentifiers.isUnique(identifierCandidate) {
                RandomIdentifierFactory.uniqueIdentifiers.insert(identifierCandidate)
                return identifierCandidate
            }
        }
    }
}
