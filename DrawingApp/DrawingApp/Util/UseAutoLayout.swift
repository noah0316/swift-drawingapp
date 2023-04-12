//
//  UseAutoLayout.swift
//  DrawingApp
//
//  Created by Noah on 2023/04/11.
//

import UIKit

@propertyWrapper
struct UseAutoLayout<View: UIView> {
    var wrappedValue: View {
        didSet {
            self.disableTranslatesAutoresizingMaskIntoConstraints()
        }
    }
    
    init(wrappedValue: View) {
        self.wrappedValue = wrappedValue
        self.disableTranslatesAutoresizingMaskIntoConstraints()
    }
    
    private func disableTranslatesAutoresizingMaskIntoConstraints() {
        self.wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
}
