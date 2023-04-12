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
    
    init?(coder: NSCoder, rectangleFactory: ViewRepresentableFactory, logger: Loggable) {
        self.rectangleFactory = rectangleFactory
        self.logger = logger
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        self.rectangleFactory = nil
        self.logger = nil
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    }
}
