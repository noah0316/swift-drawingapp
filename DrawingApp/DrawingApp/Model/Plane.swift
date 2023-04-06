//
//  Plane.swift
//  DrawingApp
//
//  Created by Noah on 2023/04/04.
//

import Foundation

final class Plane {
    private var views: [ViewRepresentable]
    
    init() {
        self.views = [ViewRepresentable]()
    }
}

extension Plane: ViewContainable {
    var count: Int {
        return self.views.count
    }
    
    subscript(index: Int) -> ViewRepresentable {
        return self.views[index]
    }
    
    func append(_ view: ViewRepresentable) {
        self.views.append(view)
    }
    
    func contains(_ view: ViewRepresentable) -> Bool {
        return self.views.contains { $0.id == view.id }
    }
    
    func contains(at position: Position) -> Bool {
        return self.views.contains { $0.frame.position == position }
    }
}
