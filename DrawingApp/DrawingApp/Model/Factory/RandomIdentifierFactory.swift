//
//  RandomIdentifierFactory.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

final class RandomIdentifierFactory: IdentifierFactory {
    private static var uniqueIdentifiers = Set<Identifier>()
    
    func makeIdentifier() -> Identifier? {
        let minToken = 100
        let maxToken = 999
        
        let firstToken = Int.random(in: minToken...maxToken)
        let secondToken = Int.random(in: minToken...maxToken)
        let thirdToken = Int.random(in: minToken...maxToken)
        let identifier = Identifier(rawValue: "\(firstToken)-\(secondToken)-\(thirdToken)")

        if RandomIdentifierFactory.uniqueIdentifiers.insert(identifier).inserted == false {
            return nil
        }
                
        return identifier
    }
}
