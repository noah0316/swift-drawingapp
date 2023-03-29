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

    init(ingridientFactory: ViewIngridientFactory, identifierFactory: IdentifierFactory) {
        self.viewIngridientFactory = ingridientFactory
        self.identifierFactory = identifierFactory
    }
    
    func makeViewRepresentable() -> ViewRepresentable {
        let id = self.identifierFactory.makeIdentifier()
        let frame = self.viewIngridientFactory.makeFrame()
        let color = self.viewIngridientFactory.makeColor()
        let alpha = self.viewIngridientFactory.makeAlpha()
        
        return Rectangle(
            id: id,
            frame: frame,
            color: color,
            alpha: alpha
        )
    }
}
