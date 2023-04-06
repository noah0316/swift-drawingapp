//
//  ViewContainable.swift
//  DrawingApp
//
//  Created by Noah on 2023/04/06.
//

import Foundation

protocol ViewContainable: Countable, RandomAccessible {
    /// reference: https://developer.apple.com/documentation/swift/array/append(_:)-1ytnt
    func append(_ view: ViewRepresentable)
    /// reference: https://developer.apple.com/documentation/swift/array/contains(_:)
    func contains(_ view: ViewRepresentable) -> Bool
    func contains(at position: Position) -> Bool
}
