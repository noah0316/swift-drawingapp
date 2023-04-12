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
    
    // MARK: - UI properties
    
    @UseAutoLayout private var canvasArea: UIView = UIView()
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
        self.setupUIAtrributes()
        self.setupLayoutConstraints()
    }
    
    private func setupUIAtrributes() {
        self.setupCanvasAreaUIAttributes()
    }
    
    private func setupLayoutConstraints() {
        self.setupCanvasAreaLayoutConstraints()
    }
}

extension ViewController {
    private func setupCanvasAreaUIAttributes() {
        self.canvasArea.backgroundColor = .white
    }
}

extension ViewController {
    private func setupCanvasAreaLayoutConstraints() {
        self.view.addSubview(self.canvasArea)
        
        NSLayoutConstraint.activate(
            [
                self.canvasArea.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                self.canvasArea.topAnchor.constraint(equalTo: self.view.topAnchor),
                self.canvasArea.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
                self.canvasArea.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8)
            ]
        )
    }
    
    }
}
