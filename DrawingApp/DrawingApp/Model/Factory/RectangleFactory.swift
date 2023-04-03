//
//  RectangleFactory.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

final class RectangleFactory: ViewRepresentableFactory {
    private let viewIngridientFactory: ViewIngridientFactory
    private let identifierFactory: IdentifierFactory

    init(viewIngridientFactory: ViewIngridientFactory, identifierFactory: IdentifierFactory) {
        self.viewIngridientFactory = viewIngridientFactory
        self.identifierFactory = identifierFactory
    }
    
    func makeViewRepresentable() -> ViewRepresentable? {
        let frame = self.viewIngridientFactory.makeFrame()
        let color = self.viewIngridientFactory.makeColor()
        let alpha = self.viewIngridientFactory.makeAlpha()
        
        if let id = self.identifierFactory.makeIdentifier() {
            return Rectangle(
                id: id,
                frame: frame,
                color: color,
                alpha: alpha
            )
        }
        
        return nil
    }
}
