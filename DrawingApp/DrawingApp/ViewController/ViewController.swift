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
    @UseAutoLayout private var addRectangleButton: UIButton = UIButton()
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
        self.setupAddRectangleButtonUIAttributes()
    }
    
    private func setupLayoutConstraints() {
        self.setupCanvasAreaLayoutConstraints()
        self.setupAddRectangleButtonLayoutConstraints()
        self.setupAttributesControlViewLayoutConstraints()
    }
}

extension ViewController {
    private func setupCanvasAreaUIAttributes() {
        self.canvasArea.backgroundColor = .white
    }
    
    private func setupAddRectangleButtonUIAttributes() {
        var addRectangleButtonConfiguration = UIButton.Configuration.bordered()
        addRectangleButtonConfiguration.image = UIImage(systemName: "rectangle")
        addRectangleButtonConfiguration.baseForegroundColor = .black
        addRectangleButtonConfiguration.imagePlacement = .top
        addRectangleButtonConfiguration.imagePadding = 20
        addRectangleButtonConfiguration.title = StringLiteral.AddRectangleButton.title
        addRectangleButtonConfiguration.baseBackgroundColor = .systemGray6
        
        self.addRectangleButton.configuration = addRectangleButtonConfiguration
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
    
    private func setupAddRectangleButtonLayoutConstraints() {
       self.view.addSubview(self.addRectangleButton)
       
       NSLayoutConstraint.activate(
           [
               self.addRectangleButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
               self.addRectangleButton.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
               self.addRectangleButton.widthAnchor.constraint(equalToConstant: 120),
               self.addRectangleButton.heightAnchor.constraint(equalToConstant: 100)
           ]
       )
   }
}
