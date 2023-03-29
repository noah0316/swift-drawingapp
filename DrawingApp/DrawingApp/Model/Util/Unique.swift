//
//  Unique.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

final class Unique<Element: Hashable> {
    private var elements: Set<Element>
    
    init() {
        self.elements = Set<Element>()
    }
    
    func isUnique(_ element: Element) -> Bool {
        return self.elements.contains(element) == false
    }
    
    func insert(_ element: Element) {
        self.elements.insert(element)
    }
}
