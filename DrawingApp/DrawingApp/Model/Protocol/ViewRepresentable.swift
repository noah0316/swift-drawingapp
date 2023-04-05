//
//  ViewRepresentable.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import Foundation

protocol ViewRepresentable: CustomStringConvertible {
    var frame: Frame { get set }
    var color: Color { get set }
    var alpha: Alpha { get set }
}
