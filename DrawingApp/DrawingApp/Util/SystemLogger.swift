//
//  SystemLogger.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import OSLog

final class SystemLogger: Loggable {
    private let logger: Logger
    
    init() {
        self.logger = Logger()
    }
    
    func log(with description: String) {
        self.logger.log("📢OSLogger: \(description)")
    }
}
