//
//  Identifiable.swift
//  DrawingApp
//
//  Created by Noah on 2023/04/06.
//

import Foundation

/// 식별가능한 능력을 나타내는 protocol입니다.
/// https://developer.apple.com/documentation/swift/identifiable와 는 달리 고정된 Identifier 타입을 식별자로 가집니다.
protocol Identifiable {
    var id: Identifier { get }
}

