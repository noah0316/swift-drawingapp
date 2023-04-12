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
    @UseAutoLayout private var attributesControlView: AttributesControlView = AttributesControlView()
    
    
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
        self.setupAttributesControlViewLayoutConstraints()
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
    
    private func setupAttributesControlViewLayoutConstraints() {
        self.view.addSubview(self.attributesControlView)
        
        NSLayoutConstraint.activate(
            [
                self.attributesControlView.leadingAnchor.constraint(equalTo: self.canvasArea.trailingAnchor),
                self.attributesControlView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                self.attributesControlView.topAnchor.constraint(equalTo: self.view.topAnchor),
                self.attributesControlView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
            ]
        )
    }
}
