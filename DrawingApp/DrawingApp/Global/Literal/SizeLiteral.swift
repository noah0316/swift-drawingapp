//
//  SizeLiteral.swift
//  DrawingApp
//
//  Created by Noah on 2023/04/12.
//

import Foundation

enum SizeLiteral {
    enum Font {
        static let regular: CGFloat = 17
        static let alphaControlDescription: CGFloat = 20
    }
    
    enum Layer {
        enum BorderWidth {
            static let thin: CGFloat = 1
        }
        
        enum CornerRadius {
            static let regular: CGFloat = 10
        }
    }
}
