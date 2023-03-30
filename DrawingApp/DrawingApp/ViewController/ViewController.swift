//
//  ViewController.swift
//  DrawingApp
//
//  Created by Noah on 2023/03/29.
//

import UIKit

final class ViewController: UIViewController {
    private let rectangleFactory: ViewRepresentableFactory?
    private let logger: Loggable?
    
    init(rectangleFactory: ViewRepresentableFactory, logger: Loggable) {
        self.rectangleFactory = rectangleFactory
        self.logger = logger
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        self.rectangleFactory = nil
        self.logger = nil
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.makeRectangle(numberOfTimes: 4)
    }
    
    private func makeRectangle(numberOfTimes : Int) {
        guard let rectangleFactory = self.rectangleFactory
        else { return }
        
        for _ in 0..<numberOfTimes {
            let rectangle = rectangleFactory.makeViewRepresentable()
            self.logger?.log(with: rectangle.description)
        }
    }
}
