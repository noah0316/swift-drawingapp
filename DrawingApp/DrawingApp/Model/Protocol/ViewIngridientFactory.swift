//
//  ViewIngridientFactory.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

protocol ViewIngridientFactory {
    func makeFrame() -> Frame
    func makeColor() -> Color
    func makeAlpha() -> Alpha
}
