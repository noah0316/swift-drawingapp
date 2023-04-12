//
//  RandomAccessible.swift
//  DrawingApp
//
//  Created by Noah on 2023/04/06.
//

import Foundation

protocol RandomAccessible {
    associatedtype Element
    subscript(index: Int) -> Element { get }
}
