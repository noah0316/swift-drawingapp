//
//  ViewIngridientFactory.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

protocol ViewIngridientFactory {
    func makeFrame(position: Position?, size: Size?) -> Frame?
    func makeColor(red: Int?, green: Int?, blue: Int?) -> Color?
    func makeAlpha(level: Int?) -> Alpha?
}

extension ViewIngridientFactory {
    func makeFrame(position: Position? = nil, size: Size? = nil) -> Frame? {
        self.makeFrame(position: position, size: size)
    }
    
    func makeColor(red: Int? = nil, green: Int? = nil, blue: Int? = nil) -> Color? {
        self.makeColor(red: red, green: green, blue: blue)
    }
    
    func makeAlpha(level: Int? = nil) -> Alpha? {
        self.makeAlpha(level: level)
    }
}
